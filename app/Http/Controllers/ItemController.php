<?php

namespace App\Http\Controllers;

use App\Item;
use Illuminate\Http\Request;


class ItemController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function index()
    {
     
     $items = Item::all();

     return response()->json($items);

    }

    public function messages()
    {
        return [
            'name.required' => 'A title is required',
            'price.required'  => 'A message is required',
        ];
    }

     public function create(Request $request)
     {
        $item = new Item;

        $this->validate($request, [
                'name' => 'required',
                'price' => 'required|numeric',
                'description' => 'required'
            ],
            [
            'price.required'  => ['A price is required','A price is number format']
            ]
        );
        $item->name= $request->name;

        $item->price = $request->price;
        $item->description= $request->description;

        $item->save();

       return response()->json($item);
     }

     public function show($id)
     {
        $item = Item::find($id);

        return response()->json($item);
     }

     public function update(Request $request, $id)
     { 
        $item= Item::find($id);
        
        $item->name = $request->input('name');
        $item->price = $request->input('price');
        $item->description = $request->input('description');
        $item->save();
        return response()->json($item);
     }

     public function destroy($id)
     {
        $item = Item::find($id);
        $item->delete();

         return response()->json('item removed successfully');
     }


    }
