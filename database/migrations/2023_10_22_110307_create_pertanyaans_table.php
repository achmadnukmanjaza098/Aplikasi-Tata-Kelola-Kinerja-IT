<?php

use App\Models\Dimensi;
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
        Schema::create('pertanyaans', function (Blueprint $table) {
            $table->id();
            $table->foreignIdFor(Dimensi::class)->constrained()->cascadeOnDelete();
            $table->string('pertanyaan')->nullable();
            $table->string('variabel')->nullable();
            $table->string('pila')->nullable();
            $table->string('pilb')->nullable();
            $table->string('pilc')->nullable();
            $table->string('pild')->nullable();
            $table->string('pile')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pertanyaans');
    }
};
