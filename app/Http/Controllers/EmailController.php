<?php

namespace App\Http\Controllers;

use App\Models\Email;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;


class EmailController extends Controller
{
     public function enviarcorreo(Request $request){
             
        $nombre = $request->input('nombre');
        $asunto = $request->input('asunto');
        $email = $request->input('email');
        $mensaje = $request->input('mensaje');
        $para = 'Para_Pruebas@gmail.com';
        
        Mail::send('correo.email', $request->all(), function($msg) use($asunto,$nombre,$email,$para){
            $msg->from($email,$nombre);
            $msg->subject($asunto);
            $msg->to($para);
        });
        return view('email.index');
    }

    public function index()
    {
        return view('email.index');
    }

    public function create()
    {
        //
    }
    public function store(Request $request)
    {
        //
    }
    public function show(Email $email)
    {
        //
    }
    public function edit(Email $email)
    {
        //
    }
    public function update(Request $request, Email $email)
    {
        //
    }
    public function destroy(Email $email)
    {
        //
    }
}