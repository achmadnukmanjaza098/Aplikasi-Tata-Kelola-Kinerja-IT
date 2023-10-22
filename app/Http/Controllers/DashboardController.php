<?php

namespace App\Http\Controllers;

use App\Models\Dimensi;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    public function dashboard()
    {
        $kpi1 = $this->kpi(1);
        $kpi2 = $this->kpi(2);
        $kpi3 = $this->kpi(3);
        $kpi4 = $this->kpi(4);
        $role = User::join('roles', 'roles.id', '=', 'users.role_id')
                    ->where('users.id', Auth::user()->id)
                    ->first(['name', 'nama_role']);

        return view('dashboard/dashboard')
                    ->with('kpi_1', $kpi1['kpi'])
                    ->with('kategori_kpi_1', $kpi1['kategori_kpi'])
                    ->with('corporate_1', $kpi1['corporate'])
                    ->with('kpi_2', $kpi2['kpi'])
                    ->with('kategori_kpi_2', $kpi2['kategori_kpi'])
                    ->with('corporate_2', $kpi2['corporate'])
                    ->with('kpi_3', $kpi3['kpi'])
                    ->with('kategori_kpi_3', $kpi3['kategori_kpi'])
                    ->with('corporate_3', $kpi3['corporate'])
                    ->with('kpi_4', $kpi4['kpi'])
                    ->with('kategori_kpi_4', $kpi4['kategori_kpi'])
                    ->with('corporate_4', $kpi4['corporate'])
                    ->with('role', $role);
    }

    public function kpi($dimensi)
    {
        $corporate = DB::select(
            "SELECT
                jawaban,
                CASE
                    jawaban
                    WHEN 'A' THEN
                    Count( jawaban )* 1
                    WHEN 'B' THEN
                    COUNT( jawaban )* 2
                    WHEN 'C' THEN
                    COUNT( jawaban )* 3
                    WHEN 'D' THEN
                    COUNT( jawaban )* 4
                    WHEN 'E' THEN
                    COUNT( jawaban )* 5
                END AS jumlah
            FROM
                jawaban_pertanyaans,
                pertanyaans
            WHERE
                ( pertanyaans.id = jawaban_pertanyaans.pertanyaan_id )
                AND ( pertanyaans.dimensi_id = $dimensi )
            GROUP BY
                jawaban
            ORDER BY
                jawaban ASC");

        $bobot = Dimensi::where('id', $dimensi)->select('bobot')->first();

        $total = 0;
        foreach ($corporate as $key => $value) {
            $total += $value->jumlah;
        }

        if (($total>=27) and ($total<=48.6)) {
            $kategori="Sangat Buruk";
            $bobot_kinerja=1;
        } elseif (($total>=48.7) and ($total<=70.2)) {
            $kategori="Buruk";
            $bobot_kinerja=2;
        } elseif (($total>=70.3) and ($total<=91.8)) {
            $kategori="Cukup Baik";
            $bobot_kinerja=3;
        } elseif (($total>=91.9) and ($total<=113.4)) {
            $kategori="Baik";
            $bobot_kinerja=4;
        } else {
            $kategori="Sangat Baik";
            $bobot_kinerja=5;
        }

        $kpi=($bobot_kinerja/$bobot->bobot)*100;

        if (($kpi>=1) and ($kpi<=20)) {
            $kategori_kpi="Tidak Baik";
        } elseif (($kpi>=21) and ($kpi<=40)) {
            $kategori_kpi="Kurang";
        } elseif (($kpi>=41) and ($kpi<=60)) {
            $kategori_kpi="Cukup";
        } elseif (($kpi>=61) and ($kpi<=80)) {
            $kategori_kpi="Baik";
        } else {
            $kategori_kpi="Sangat Baik";
        }

        $data = [
            'kpi' => $kpi,
            'kategori_kpi' => $kategori_kpi,
            'corporate' => $corporate,
        ];

        return $data;
    }
}
