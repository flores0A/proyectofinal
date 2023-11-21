<?php

namespace App\Http\Controllers;
use GuzzleHttp\Client;
use Illuminate\Http\Request;

class ApiController extends Controller
{
    // ...

    public function postDataToServer(Request $request)
    {
        try {
            if ($request->isMethod('post')) {
                $client = new Client();
                $response = $client->post('http://localhost:3000/itens', [
                    'headers' => [
                        'Content-Type' => 'application/json',
                    ],
                    'json' => $request->all(),
                ]);

                return $response;
            }
            

            return response()->json(['error' => 'El método no existe'], 400);
        } catch (\Exception $e) {
            \Log::error('Error al realizar la solicitud: ' . $e->getMessage());
            return response()->json(['error' => 'Error interno del servidor'], 500);
        }
    }
}