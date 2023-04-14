<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class tableinfo extends Model
{
    protected $table = 'tableinfos';
    use HasFactory;
    protected $fillable = ['table_number', 'table_type', 'total_seat', 'table_status'];

}