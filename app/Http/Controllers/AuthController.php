<?php

namespace App\Http\Controllers;

use App\Http\Requests\LoginRequest;
use App\Http\Requests\SignupRequest;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function Signup(SignupRequest $request)
    {
        $data = $request->validated();
        $user = User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => bcrypt($data['password'])
        ]);
        $token = $user->createToken('main')->plainTextToken;
        return response()->json(compact('user', 'token'));
    }
    public function login(LoginRequest $request)
    {
        $data = $request->validated();
        if (!Auth::attempt($data)) {
            return response('data is incorrect', 422);
        }
        $user = Auth::user();
        $token = $user->createToken('main')->plainTextToken;
        return response()->json(compact('user', 'token'));
    }
    public function Logout(Request $request)
    {
        $user = $request->user();
        $user->currentAccessToken()->delete();
        return response('', 204);
    }
    public function me(Request $request)
    {
        return $request->user();
    }
}
