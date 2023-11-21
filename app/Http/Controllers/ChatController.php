<?php

namespace App\Http\Controllers;

use App\Models\Chat;
use Illuminate\Http\Request;

class ChatController extends Controller
{
    public function __construct(){
    $this->middleware('auth');
}
    public function show(){
        return view('chat');
    }
/*
    public function index()
    {
        //
    }

    public function create()
    {
        //
    }
    public function store(Request $request)
    {
        //
    }
    public function show(Chat $chat)
    {
        //
    }
    public function edit(Chat $chat)
    {
        //
    }

    public function update(Request $request, Chat $chat)
    {
        //
    }
    public function destroy(Chat $chat)
    {
        //
    }*/
}