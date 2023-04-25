<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tablereserve extends Model
{
    protected $table = 'tablereserve';
    use HasFactory;
    protected $fillable = ['time_in','made_by','guests_number','table_number', 'table_type', 'contact_information', 'special_requests', 'booking_price', 'notes_comments'];

}