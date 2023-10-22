<?php

namespace App\Http\Controllers;

use App\Models\Dimensi;
use App\Models\Pertanyaan;
use App\Models\Variabel;
use Illuminate\Http\Request;

class PertanyaanController extends Controller
{
    public function pertanyaan()
    {
        $data = Pertanyaan::join('dimensis', 'dimensis.id', '=', 'pertanyaans.dimensi_id')
                    ->select('pertanyaans.id as id', 'dimensis.dimensi as dimensi', 'pertanyaan', 'variabel', 'pila', 'pilb', 'pilc', 'pild', 'pile')
                    ->orderBy('pertanyaans.id', 'ASC')
                    ->get();
        return view('pertanyaan/pertanyaan')
                ->with('data', $data);
    }

    public function addPertanyaan()
    {
        $dimensi = Dimensi::get();
        $variabel = Variabel::get();
        return view('pertanyaan/pertanyaanForm')
                ->with('variabel', $variabel)
                ->with('dimensi', $dimensi);
    }

    public function editPertanyaan($id)
    {
        $data = Pertanyaan::find($id);
        $dimensi = Dimensi::get();
        $variabel = Variabel::get();
        return view('pertanyaan/pertanyaanForm')
                ->with("data", $data)
                ->with("variabel", $variabel)
                ->with("dimensi", $dimensi);
    }

    public function actionEditPertanyaan(Request $request, $id)
    {
        $pertanyaan = Pertanyaan::find($id);
        $pertanyaan->pertanyaan = $request->input('pertanyaan');
        $pertanyaan->dimensi_id = $request->input('dimensi');
        $pertanyaan->variabel = $request->input('variabel');
        $pertanyaan->pila = $request->input('pila');
        $pertanyaan->pilb = $request->input('pilb');
        $pertanyaan->pilc = $request->input('pilc');
        $pertanyaan->pild = $request->input('pild');
        $pertanyaan->pile = $request->input('pile');
        $pertanyaan->save();
        return redirect('/pertanyaan');
    }

    public function actionAddPertanyaan(Request $request)
    {
        $pertanyaan = new Pertanyaan;
        $pertanyaan->pertanyaan = $request->input('pertanyaan');
        $pertanyaan->dimensi_id = $request->input('dimensi');
        $pertanyaan->variabel = $request->input('variabel');
        $pertanyaan->pila = $request->input('pila');
        $pertanyaan->pilb = $request->input('pilb');
        $pertanyaan->pilc = $request->input('pilc');
        $pertanyaan->pild = $request->input('pild');
        $pertanyaan->pile = $request->input('pile');
        $pertanyaan->save();

        return redirect('/pertanyaan');
    }

    public function actionDeletePertanyaan($id)
    {
        $pertanyaan = Pertanyaan::find($id);
        $pertanyaan->delete();
        return redirect('/pertanyaan');
    }
}
