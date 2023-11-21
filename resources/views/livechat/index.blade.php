@extends("layout.general")
@section("contenido")
<div class="container">

    @livewire("chat-form")
    @livewire("chat-list")

</div>


@endsection("contenido")