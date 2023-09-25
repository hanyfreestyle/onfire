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
        Schema::create('categories', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('parent_id')->nullable();
            $table->string('name');
            $table->string('slug')->unique();
            $table->text('des')->nullable();
            $table->string("photo")->nullable();
            $table->string("photo_thum_1")->nullable();
            $table->boolean("is_active")->default(true);
            $table->integer('postion')->default(0);
            $table->timestamps();

            $table->foreign('parent_id')->references('id')->on('categories')->onDelete('RESTRICT');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('categories');
    }
};
