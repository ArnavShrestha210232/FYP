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
        Schema::create('tablereserves', function (Blueprint $table) {
            $table->id();
            $table->string('date_in');
            $table->string('date_out');
            $table->string('status');
            $table->string('made_by');
            $table->string('number of guests');
            $table->string('table location');
            $table->string('contact information');
            $table->string('special requests');
            $table->string('notes or comments');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tablereserves');
    }
};
