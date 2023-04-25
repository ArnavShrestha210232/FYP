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
        Schema::create('tablereserve', function (Blueprint $table) {
            $table->id();
            $table->string('time_in');
            $table->string('time_out');
            $table->string('made_by');
            $table->string('guests_number');
            $table->string('table_number');
            $table->enum('table_type', ['General','Private','VIP']);
            $table->string('contact_information');
            $table->string('special_requests');
            $table->string('notes_comments');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tablereserve');
    }
};