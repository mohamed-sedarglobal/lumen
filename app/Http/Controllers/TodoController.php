<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Todo;
use Auth;

class TodoController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        //$todo = Auth::user();
        // $todo = Auth::user()->todo()->get();
        $todos = Todo::all();

        return response()->json($todos);

    }

    public function create(Request $request)
    {
        $todo = new Todo;

        $todo->name= $request->name;
        $todo->description = $request->description;
        $todo->category= $request->category;
        $todo->status= $request->status;
        $todo->user_id= $request->user_id;

        $todo->save();

        return response()->json($todo);
    }

    public function show($id)
    {
        $todo = Todo::find($id);

        return response()->json($todo);
    }

    public function update(Request $request, $id)
    { 
        $todo= Todo::find($id);

        $todo->name = $request->input('name');
        $todo->description = $request->input('description');
        $todo->category = $request->input('category');
        $todo->status = $request->input('status');
        $todo->user_id= $request->input('user_id');;
        $todo->save();
        return response()->json($todo);
    }

    public function destroy($id)
    {
        $todo = Todo::find($id);
        $todo->delete();

        return response()->json('todo removed successfully');
    }


}
