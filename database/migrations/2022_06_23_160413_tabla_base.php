<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TablaBase extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('departamentos', function (Blueprint $table) {
            $table->bigInteger('id')->autoIncrement();
            $table->string ('Nombre',120);
            $table->text('Descripcion')->nullable();
            $table->softDeletes();
        });
        Schema::create('tipo_activos', function (Blueprint $table) {
            $table->bigInteger('id')->autoIncrement();
            $table->string ('Nombre',120);
            $table->text('Descripcion')->nullable();
            $table->softDeletes();
        });
        Schema::create('empresas', function (Blueprint $table) {
            $table->bigInteger('id')->autoIncrement();
            $table->string ('Nombre',120);
            $table->bigInteger('IdDpto');
            $table->foreign('IdDpto')->references('id')->on('departamentos');
            $table->softDeletes();
        });
        Schema::create('oficinas', function (Blueprint $table) {
            $table->bigInteger('id')->autoIncrement();
            $table->text('Direccion')->nullable();
            $table->text('Descripcion')->nullable();
            $table->softDeletes();
        });
        Schema::create('d_em_ofis', function (Blueprint $table) {
            $table->bigInteger('IdE');
            $table->bigInteger('IdO');
            $table->primary(['IdE','IdO']);
            $table->date('fecha_i');
            $table->date('fecha_f')->nullable();
            $table->foreign('IdE')->references('id')->on('empresas');
            $table->foreign('IdO')->references('id')->on('oficinas');
            $table->softDeletes();
        });
        
        Schema::create('activos', function (Blueprint $table) {
            $table->bigInteger('id')->autoIncrement();
            $table->string ('Codigo',60);
            $table->bigInteger('IdTAct')->nullable();
            $table->string ('Marca',60)->nullable();
            $table->string ('Modelo',60)->nullable();
            $table->string ('NroSerial',90)->nullable();
            $table->string('Condicion',60);
            $table->text('Observaciones')->nullable();
            $table->foreign('IdTAct')->references('id')->on('tipo_activos');           
            $table->softDeletes();
        });

        Schema::create('asignacion', function (Blueprint $table) {
            $table->bigInteger('id')->autoIncrement();
            $table->bigInteger('IdE');
            $table->bigInteger('IdO');
            $table->bigInteger('IdAct');

            $table->date('fecha_i');
            $table->date('fecha_f')->nullable();
            $table->string ('CapRecursos',60)->nullable();
            $table->string ('UsuarioAsig',60)->nullable();
            $table->text('telefono_asig')->nullable();
            $table->text('Observaciones')->nullable();

            $table->foreign('IdE')->references('IdE')->on('d_em_ofis');           
            $table->foreign('IdO')->references('IdO')->on('d_em_ofis');
            $table->foreign('IdAct')->references('id')->on('activos');           
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
        Schema::dropIfExists('departamentos');
        Schema::dropIfExists('tipo_activos');
        Schema::dropIfExists('empresas');
        Schema::dropIfExists('oficinas');
        Schema::dropIfExists('d_em_ofis');
        Schema::dropIfExists('activos');
        Schema::dropIfExists('asignacion');
    }
}
