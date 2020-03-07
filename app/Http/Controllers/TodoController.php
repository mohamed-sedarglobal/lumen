<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Todo;
use Auth;
use Exception;

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
        // going to show only for the today by default
        $todayDate = date('Y-m-d');
        $todos = Auth::user()->todo()->get()->where('date', $todayDate);

        return response()->json([
            'error_no' => '0',
            'error_msg' => 'success',
            'result' => $todos
        ]);

    }

    public function create(Request $request)
    {
        $this->validate($request, [
                'name' => 'required',
                'description' => 'required',
                'category' => 'required',
                'status' => 'required',
                'date' => 'required|date',
            ],
            [
            // 'name.required'  => ['A name is required'],
            // 'description.required'  => ['A description is required']
            ]
        );
        try{
            $savedData = Auth::user()->todo()->Create($request->all());
            if($savedData){
                return response()->json([
                    'error_no' => 0,
                    'error_msg' => 'success',
                    'result' => $savedData
                    ]);
            }else{
                return response()->json([
                    'error_no' => -111,
                    'error_msg' => 'Unable to create',
                    'result' => []
                    ]);
            }
        }catch(Exception $e){
            return response()->json([
                'error_no' => $e->errorInfo[1],
                'error_msg' => $e->errorInfo[2],
            ]);
        }
    }
// work for filter on basis of filter_by date/category/status/all
    public function filter(Request $request)
    {
        $filter_by = $request->filter_by;
        if($filter_by == 'date'){
            $this->validate($request, [
                    'start_date' => 'required|date',
                    'end_date' => 'required|date',
                ],
                [
                // 'name.required'  => ['A name is required'],
                // 'description.required'  => ['A description is required']
                ]
            );
        }else if($filter_by == 'category'){
            $this->validate($request, [
                    'category' => 'required',
                ],
                [
                // 'name.required'  => ['A name is required'],
                // 'description.required'  => ['A description is required']
                ]
            );
        }else if($filter_by == 'status'){
            $this->validate($request, [
                    'status' => 'required',
                ],
                [
                // 'name.required'  => ['A name is required'],
                // 'description.required'  => ['A description is required']
                ]
            );
        }else if($filter_by == 'all'){
            $this->validate($request, [
                    'status' => 'required',
                    'category' => 'required',
                    'start_date' => 'required|date',
                    'end_date' => 'required|date',
                ],
                [
                // 'name.required'  => ['A name is required'],
                // 'description.required'  => ['A description is required']
                ]
            );
        }else{
            return response()->json([
                'error_no' => -113,
                'error_msg' => 'Choose any of the filter',
                'result' => []
                ]);
        }

        try{
            if($filter_by == 'date'){
                $from = $request->start_date;
                $to = $request->end_date;

                $todo = Auth::user()->todo()->get()->whereBetween('date', [$from, $to]);
            }else if($filter_by == 'category'){
                $category = $request->category;
                $todo = Auth::user()->todo()->get()->where('category', $category);
            }else if($filter_by == 'status'){
                $status = $request->status;
                $todo = Auth::user()->todo()->get()->where('status', $status);
            }else if($filter_by == 'all'){
                $from = $request->start_date;
                $to = $request->end_date;
                $category = $request->category;
                $status = $request->status;
                $todo = Auth::user()->todo()->get()
                    ->where('status', $status)
                    ->where('category', $category)
                    ->whereBetween('date', [$from, $to]);
            }

            if($todo){
            return response()->json([
                'error_no' => 0,
                'error_msg' => 'success',
                'result' => $todo
                ]);
            }else{
                return response()->json([
                'error_no' => -112,
                'error_msg' => 'Unable to fetch',
                'result' => []
                ]);
            }
        }catch(Exception $e){
            return response()->json([
                'error_no' => $e->errorInfo[1],
                'error_msg' => $e->errorInfo[2],
            ]);
        }
    }


    // work for todo completion/snoozing/amendig to pending again
    public function changeStatus(Request $request, $id)
    {
        $this->validate($request, [
                'status' => 'required',
            ],
            [
            // 'name.required'  => ['A name is required'],
            // 'description.required'  => ['A description is required']
            ]
        );

        try{

            $check = Auth::user()->todo()->find($id);
            if($check){
                // $todo= Todo::find($id);
                $todo = $check;

                $todo->status = $request->input('status');

                if($todo->status == 'Snooze'){// next day or next week 
                    $this->validate($request, [
                            'date' => 'required|date',
                        ],
                    );
                $todo->date = $request->input('date');
                }

                $todo->save();
                return response()->json([
                    'error_no' => 0,
                    'error_msg' => 'success',
                    'result' => $todo
                    ]);
            }else{
                return response()->json([
                    'error_no' => -112,
                    'error_msg' => 'Unable to update the status',
                    'result' => []
                    ]);
            }
        }catch(Exception $e){
            return response()->json([
                'error_no' => $e->errorInfo[1],
                'error_msg' => $e->errorInfo[2],
            ]);
        }
        
    }

    // need to change the todo status to overdue if the date crossed
    // need to schedule a job daily to execute this refresh 
    // not completed job/ pending to overdue status
    public function todoRefresh(Request $request)
    {
        try{

            $todayDate = date('Y-m-d',strtotime("-1 days"));

            $update = app('db')->table('todos')->where('date', '<=', $todayDate)->where('status', 'Pending')->update(['status' => 'Overdue']);

            // $check = Auth::user()->todo()->get()
            //                         ->where('status', 'Pending');
            return response()->json([
                    'error_no' => 0,
                    'error_msg' => 'success',
                    'result' => $update
                    ]);
            // dump($check);exit;
            if($check){
                // $todo= Todo::find($id);
                $todo = $check;

                $todo->status = $request->input('status');

                if($todo->status == 'Snooze'){// next day or next week 
                    $this->validate($request, [
                            'date' => 'required|date',
                        ],
                    );
                $todo->date = $request->input('date');
                }

                $todo->save();
                return response()->json([
                    'error_no' => 0,
                    'error_msg' => 'success',
                    'result' => $todo
                    ]);
            }else{
                return response()->json([
                    'error_no' => -112,
                    'error_msg' => 'Unable to update the status',
                    'result' => []
                    ]);
            }
        }catch(Exception $e){
            return response()->json([
                'error_no' => $e->errorInfo[1],
                'error_msg' => $e->errorInfo[2],
            ]);
        }
        
    }

    public function show($id)
    {

        try{
            $todo = Auth::user()->todo()->find($id);

            if($todo){
            return response()->json([
                'error_no' => 0,
                'error_msg' => 'success',
                'result' => $todo
                ]);
            }else{
                return response()->json([
                'error_no' => -112,
                'error_msg' => 'Unable to fetch',
                'result' => []
                ]);
            }
        }catch(Exception $e){
            return response()->json([
                'error_no' => $e->errorInfo[1],
                'error_msg' => $e->errorInfo[2],
            ]);
        }
    }


    public function update(Request $request, $id)
    {
        $this->validate($request, [
                'name' => 'required',
                'description' => 'required',
                'category' => 'required',
            ],
            [
            // 'name.required'  => ['A name is required'],
            // 'description.required'  => ['A description is required']
            ]
        );

        try{

            $check = Auth::user()->todo()->find($id);
            if($check){
                // $todo= Todo::find($id);
                $todo = $check;

                $todo->name = $request->input('name');
                $todo->description = $request->input('description');
                $todo->category = $request->input('category');
                $todo->save();
                return response()->json([
                    'error_no' => 0,
                    'error_msg' => 'success',
                    'result' => $todo
                    ]);
            }else{
                return response()->json([
                    'error_no' => -112,
                    'error_msg' => 'Unable to update',
                    'result' => []
                    ]);
            }
        }catch(Exception $e){
            return response()->json([
                'error_no' => $e->errorInfo[1],
                'error_msg' => $e->errorInfo[2],
            ]);
        }
        
    }

    public function destroy($id)
    {
        try{

            $check = Auth::user()->todo()->find($id);
            if($check){
                // $todo= Todo::find($id);
                $todo = $check;
                $todo->delete();
                return response()->json([
                    'error_no' => 0,
                    'error_msg' => 'success',
                    'result' => $todo
                    ]);
            }else{
                return response()->json([
                    'error_no' => -112,
                    'error_msg' => 'Unable to delete',
                    'result' => []
                    ]);
            }
        }catch(Exception $e){
            return response()->json([
                'error_no' => $e->errorInfo[1],
                'error_msg' => $e->errorInfo[2],
            ]);
        }

    }
}
