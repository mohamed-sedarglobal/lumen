<?php

namespace App\Http\Controllers;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;


class UserController extends Controller
{

    public function authenticate(Request $request)
   {
        $this->validate($request, [
            'email' => 'required',
            'password' => 'required'
        ]);
        $user = User::where('email', $request->input('email'))->first();
        if(Hash::check($request->input('password'), $user->password)){
            $apikey = base64_encode(str_random(40));
            Users::where('email', $request->input('email'))->update(['api_key' => "$apikey"]);;
            return response()->json(['status' => 'success','api_key' => $apikey]);
        }else{
            return response()->json(['status' => 'fail'],401);
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
            ],
            [
            // 'user_name.required'  => ['A price is required','A price is number format'],
            // 'email.required'  => ['A email is required','A price is number format']
            ]
        );

       $user->first_name= $request->first_name;
       $user->last_name = $request->last_name;
       $user->user_name= $request->user_name;
       $user->password= md5($request->password);
       $user->email= $request->email;
       $user->mobile_no= $request->mobile_no;
       $user->gender= $request->gender;
       $user->birthday= $request->birthday;
       $user->save();

       return response()->json($user);
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
