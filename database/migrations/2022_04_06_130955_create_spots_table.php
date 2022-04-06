<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('spots', function (Blueprint $table) {
            $table->id();
            $table->integer('position');
            $table->enum('is_occupied', [1, 0])->default(0);
            $table->string('modal')->nullable();
            $table->string('chassis_no')->nullable();
            $table->string('parked_by')->nullable();
            $table->dateTime('parked_at')->nullable();
            $table->string('for')->nullable();
            $table->integer('pos_x');
            $table->integer('pos_y');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('spots');
    }
};
