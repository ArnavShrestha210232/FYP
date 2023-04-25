<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('tableinfo', function (Blueprint $table) {
            $table->id();
            $table->string('table_number');
            $table->enum('table_type', ['General','Private','VIP']);
            $table->string('total_seat');
            $table->enum('table_status', ['Booked', 'Unbooked']);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tableinfos');
    }
};
