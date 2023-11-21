<?php

namespace App\Http\Controllers;

use App\Models\Point;
use Illuminate\Http\Request;


class PointController extends Controller
{
    public function index()
    {
        //
         $datos['points']=Point::paginate(8);
            return view('points.index', $datos);
    }

    public function create()
    {
        //
    }  
    public function store(Request $request)
{
    // Lógica para guardar en la base de datos local
    $validatedData = $request->validate([
        'nombre' => 'required|string|max:255',
        'comentario' => 'required|string',
    ]);

    $point = new Point();
    $point->nombre = $validatedData['nombre'];
    $point->comentario = $validatedData['comentario'];
    $point->save();

    // Lógica para enviar datos al servidor json (db.json)
    $apiController = new ApiController();
$responseToServer = $apiController->postDataToServer($request);

// Puedes procesar la respuesta del servicio externo según tus necesidades
$responseDataToServer = json_decode($responseToServer->getBody()->getContents(), true);

// Devolver una respuesta JSON combinada
return response()->json([
    'message' => 'Datos guardados correctamente y enviados al servidor json',
    'local_data' => ['id' => $point->id, 'nombre' => $point->nombre, 'comentario' => $point->comentario],
    'server_response' => $responseDataToServer,
], 201);
}
    public function show($id)
    {
        // Recuperar el punto por ID
        $point = Point::find($id);
        // Verificar si el punto existe
        if (!$point) {
            return response()->json(['message' => 'Punto no encontrado'], 404);
        }
        // Devolver el punto como JSON
        return response()->json($point);
    }
    public function edit(Point $point)
    {
        //
    }

    public function update(Request $request, Point $point)
    {
        //
    }

    public function destroy(Point $point)
    {
        //
    }
}