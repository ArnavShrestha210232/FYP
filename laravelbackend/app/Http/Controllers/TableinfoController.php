<?php

namespace App\Http\Controllers;

use App\Models\tableinfo;
use Illuminate\Http\Request;

class TableinfoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = Tableinfo::latest()->paginate(5);
        return view('index', compact('data'))->with('i',(request()->input('page',1)-1)*5);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'table_number'         =>  'required|unique:food',
            'table_type'         =>  'required',
            'total_seat'         =>  'required', 
            'table_status'         =>  'required',
        ]); 
        

        
        $tableinfo = new Food;

        $tableinfo->table_number = $request->table_number;
        $tableinfo->table_type = $request->table_type;
        $tableinfo->total_seat = $request->total_seat;
        $tableinfo->table_status = $request->table_status;

        $tableinfo->save();

        return redirect()->route('tableinfo.index')->with('success','Food Added Successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(tableinfo $tableinfo)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(tableinfo $tableinfo)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, tableinfo $tableinfo)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(tableinfo $tableinfo)
    {
        //
    }
}
