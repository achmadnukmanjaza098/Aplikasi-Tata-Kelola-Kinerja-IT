<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Role;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function user()
    {
        $data = User::join('roles', 'roles.id', '=', 'users.role_id')
                    ->select('users.id as id', 'users.name as name', 'users.email as email', 'roles.nama_role as role')
                    ->get();
        return view('user/user')
                ->with('data', $data);
    }

    public function addUser()
    {
        $role = Role::get();
        return view('user/userForm')
                ->with('role', $role);
    }

    public function editUser($id)
    {
        $data = User::find($id);
        $role = Role::get();
        return view('user/userForm')
                ->with("data", $data)
                ->with("role", $role);
    }

    public function actionEditUser(Request $request, $id)
    {
        $user = User::find($id);
        $user->name = $request->input('nama');
        $user->email = $request->input('email');
        $user->role_id = $request->input('role');
        $user->save();
        return redirect('/user');
    }

    public function actionAddUser(Request $request)
    {
        if ($request->input('role') == 1) {
            $password = bcrypt('admin');
        } else if ($request->input('role') == 2) {
            $password = bcrypt('dekan');
        } else if ($request->input('role') == 3) {
            $password = bcrypt('puskom');
        } else if ($request->input('role') == 4) {
            $password = bcrypt('kaprodi');
        }

        $user = new User;
        $user->name = $request->input('nama');
        $user->email = $request->input('email');
        $user->password = $password;
        $user->role_id = $request->input('role');
        $user->save();

        return redirect('/user');
    }

    public function actionDeleteUser($id)
    {
        $user = User::find($id);
        $user->delete();
        return redirect('/user');
    }
}
