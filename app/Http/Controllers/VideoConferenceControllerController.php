<?php

namespace App\Http\Controllers;

use App\Models\VideoConferenceController;
use Illuminate\Http\Request;

class VideoConferenceControllerController extends Controller
{
    public function index()
    {
        return view('video-conference');
    }/*
    public function create()
    {
        //
    }
    public function store(Request $request)
    {
        //
    }
    public function show(VideoConferenceController $videoConferenceController)
    {
        //
    }
    public function edit(VideoConferenceController $videoConferenceController)
    {
        //
    }
    public function update(Request $request, VideoConferenceController $videoConferenceController)
    {
        //
    }
    public function destroy(VideoConferenceController $videoConferenceController)
    {
        //
    }*/
}