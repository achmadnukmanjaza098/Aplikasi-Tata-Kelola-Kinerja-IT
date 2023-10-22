<?php

namespace App\Http\Controllers;

use App\Models\Dimensi;
use Illuminate\Http\Request;

class DimensiController extends Controller
{
    public function dimensi()
    {
        $data = Dimensi::get();
        return view('dimensi/dimensi')->with('data', $data);
    }

    public function addDimensi()
    {
        return view('dimensi/dimensiForm');
    }

    public function editDimensi($id)
    {
        $data = Dimensi::find($id);
        return view('dimensi/dimensiForm')->with("data", $data);
    }

    public function actionEditDimensi(Request $request, $id)
    {
        $dimensi = Dimensi::find($id);
        $dimensi->dimensi = $request->input('dimensi');
        $dimensi->bobot = $request->input('bobot');
        $dimensi->save();
        return redirect('/dimensi');
    }

    public function actionAddDimensi(Request $request)
    {
        $dimensi = new Dimensi;
        $dimensi->dimensi = $request->input('dimensi');
        $dimensi->bobot = $request->input('bobot');
        $dimensi->save();

        return redirect('/dimensi');
    }

    public function actionDeleteDimensi($id)
    {
        $dimensi = Dimensi::find($id);
        $dimensi->delete();
        return redirect('/dimensi');
    }
}
