<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVotesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
            public function up()
            {
                Schema::create('votes', function (Blueprint $table) {
                    $table->id();
                    $table->unsignedBigInteger('user_id');
                    $table->unsignedBigInteger('kandidat_id');
                    $table->unsignedBigInteger('polling_id');
                    $table->timestamps();

                    $table->unique(['user_id', 'kandidat_id']);

                    // Define foreign keys

        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('votes');
    }
};

