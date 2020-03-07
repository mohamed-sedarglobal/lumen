<?php

namespace App\Http\Controllers;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
// use Auth;
use Exception;


class UserController extends Controller
{
    public function __construct()
    {
        //
    }

    public function authenticate(Request $request)
   {
        $this->validate($request, [
            'email' => 'required',
            'password' => 'required'
        ]);
        try{

            $invalidUser = response()->json([
                    'error_no' => '-999',
                    'error_msg' => 'Invalid User',
                ]);
            $user = User::where('email', $request->input('email'))->first();
            if(!($user)){
                return $invalidUser;
            }
            if(md5($request->input('password')) == $user->password){
                $apikey = base64_encode(md5(rand(123456789,987654321)));
                User::where('email', $request->input('email'))->update(['api_key' => "$apikey"]);
                $user = User::where('email', $request->input('email'))->first();
                return response()->json([
                    'error_no' => '0',
                    'error_msg' => 'success',
                    'result' =>$user
                ]);
            }else{
                return $invalidUser;
            }
        }catch(Exception $e){
            return response()->json([
                'error_no' => $e->errorInfo[1],
                'error_msg' => $e->errorInfo[2],
            ]);
        }
   }
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function index()
    {
        $users = User::all();

        return response()->json($users);

    }

     public function create(Request $request)
     {
        $user = new User;

        $this->validate($request, [
                'first_name' => 'required',
                'user_name' => 'required',
                'email' => 'required',
                'password' => 'required',
                'mobile_no' => 'required|regex:/[+0-9]/|not_regex:/[a-z]/|min:9',
                'gender' => 'required',
                'birthday' => 'required|date|date_format:Y-m-d',
            ],
            [
            // 'user_name.required'  => ['A name is required',],
            // 'email.required'  => ['A email is required',]
            ]
        );
        try{
               $user->first_name= $request->first_name;
               $user->last_name = $request->last_name;
               $user->user_name = $request->user_name;
               $user->password= md5($request->password);
               $user->email= $request->email;
               $user->mobile_no= $request->mobile_no;
               $user->gender= $request->gender;
               $user->birthday= $request->birthday;
               $user->api_key = '';
               $user->save();
            return response()->json([
                    'error_no' => 0,
                    'error_msg' => 'success',
                    'result' => $user
                    ]);
        }catch(Exception $e){
            return response()->json([
                'error_no' => $e->errorInfo[1],
                'error_msg' => $e->errorInfo[2],
            ]);
        }
     }

     public function show($id)
     {
        $user = User::find($id);

        return response()->json($user);
     }

     public function update(Request $request, $id)
     { 
        $user= User::find($id);
        

        $user->first_name= $request->input('first_name');
        $user->last_name = $request->input('last_name');
        $user->user_name= $request->input('user_name');
        $user->password= $request->input('password');
        $user->email= $request->input('email');
        $user->mobile_no= $request->input('mobile_no');
        $user->gender= $request->input('gender');
        $user->birthday= $request->input('birthday');

        $user->save();
        return response()->json($user);
     }

     public function destroy($id)
     {
        $user = User::find($id);
        $user->delete();

         return response()->json('user removed successfully');
     }


    }
