<?php

namespace App\Http\Controllers;

use App\Models\JawabanPertanyaan;
use App\Models\Pertanyaan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class JawabanPertanyaanController extends Controller
{
    public function jawabanPertanyaan()
    {
        $data = Pertanyaan::orderBy('id', 'ASC')->get();
        return view('jawabanPertanyaan/jawabanPertanyaanForm')
                ->with('data', $data);
    }

    public function actionAddJawabanPertanyaan(Request $request)
    {
        $total = count($request->all());
        for ($i = 0; $i < $total; $i++) {
            if($i > 0){
                $jawabanPertanyaan = new JawabanPertanyaan;
                $jawabanPertanyaan->pertanyaan_id = $i;
                $jawabanPertanyaan->jawaban = $request->input($i);
                $jawabanPertanyaan->user_id = Auth::user()->id;
                $jawabanPertanyaan->save();
            }
        }

        return redirect('/jawabanPertanyaan');
    }
}
