<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TableActivos extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('activos', function (Blueprint $table) {
            $table->bigInteger('id')->autoIncrement();
            $table->string ('Codigo',60)->nullable();
            $table->string ('NombreActivo',120)->nullable();
            $table->string ('Marca',60)->nullable();
            $table->string ('Modelo',60)->nullable();
            $table->string ('NroSerial',90)->nullable();
            $table->string ('Oficina',90)->nullable();
            $table->text('Condicion')->nullable();
            $table->string ('UsuarioAsig',60)->nullable();
            $table->text('Observaciones')->nullable();
            $table->string ('CapRecursos',60)->nullable();
            $table->string ('Empresa',60)->nullable();

            $table->bigInteger('IdCategoria')->nullable();
            $table->foreign('IdCategoria')->references('id')->on('categorias');
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('activos');
    }
}
