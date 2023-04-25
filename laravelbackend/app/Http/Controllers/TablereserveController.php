<?php

namespace App\Http\Controllers;

use App\Models\tablereserve;
use Illuminate\Http\Request;


class TablereserveController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = Tablereserve::latest()->paginate(5);
        return view('tablereserve.index', compact('data'))->with('i',(request()->input('page',1)-1)*5);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('tablereserve.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'time_in'         =>  'required',
            'made_by'         =>  'required',
            'guests_number'         =>  'required',
            'table_number'         =>  'required|unique:tablereserve',
            'table_type'         =>  'required',
            'contact_information'         =>  'required', 
            'special_requests'         =>  'required',
            'booking_price'         =>  'required',
            'notes_comments'         =>  'required',
        ]); 
        

        
        $tablereserve = new Tablereserve;

        $tablereserve->time_in = $request->time_in;
        $tablereserve->made_by = $request->made_by;
        $tablereserve->guests_number = $request->guests_number;
        $tablereserve->table_number = $request->table_number;
        $tablereserve->table_type = $request->table_type;
        $tablereserve->contact_information = $request->contact_information;
        $tablereserve->special_requests = $request->special_requests;
        $tablereserve->booling_price= $request->booking_price;
        $tablereserve->notes_comments = $request->notes_comments;

        $tablereserve->save();

        return redirect()->route('tablereserve.index')->with('success','Table Info Added Successfully.');
    }

    /**
     * Display the specified resource.
     * @param  \App\Models\tablereserve  $tablereserve
     * @return \Illuminate\Http\Response
     */
    public function show(tablereserve $tablereserve)
    {
        return view('tablereserve.show', compact('tablereserve'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(tablereserve $tablereserve)
    {
        return view('tablereserve.edit', compact('tablereserve'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, tablereserve $tablereserve)
    {
        $request->validate([
            'time_in'         =>  'required',
            'made_by'         =>  'required',
            'guests_number'         =>  'required',
            'table_number'         =>  'required|unique:tablereserve',
            'table_type'         =>  'required',
            'contact_information'         =>  'required', 
            'special_requests'         =>  'required',
            'booking_price'         =>  'required',
            'notes_comments'         =>  'required',
        ]); 


        $tablereserve = tablereserve::find($request->hidden_id);

        $tablereserve->time_in = $request->time_in;
        $tablereserve->made_by = $request->made_by;
        $tablereserve->guests_number = $request->guests_number;
        $tablereserve->table_number = $request->table_number;
        $tablereserve->table_type = $request->table_type;
        $tablereserve->contact_information = $request->contact_information;
        $tablereserve->special_requests = $request->special_requests;
        $tablereserve->booking_price = $request->booking_price;
        $tablereserve->notes_comments = $request->notes_comments;

        $tablereserve->save();

        return redirect()->route('tablereserve.index')->with('success', 'Table Info has been updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(tablereserve $tablereserve)
    {
        $tablereserve->delete();

        return redirect()->route('tablereserve.index')->with('success', 'Table Info has been deleted successfully');
    }
}

