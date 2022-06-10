<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laravel</title>

    <!-- bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
        <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
        <!-- iconos -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
</head>

<body>
    <div id="c_principal"class="container-fluid">
        @if (Route::has('login'))
        <div class="top-right links">
            @auth
            <a href="{{ url('/home') }}">Home</a>
            @else
            <a href="{{ route('login') }}">Login</a>

            @if (Route::has('register'))
            <a href="{{ route('register') }}">Register</a>
            @endif
            @endauth
        </div>
        @endif
    
        <div class="container-fluid" id=fondo></div>
        <img id="img_logo" src="{{ asset('img/logo.png') }}" alt="paz">
    </div>
        <!-- <div class="Container" id=Fondo2>

        </div>     -->

        <div class="container-fluid" id=Fondo2>
                <p id=p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed ad quaerat possimus minus hic aperiam cupiditate officiis necessitatibus obcaecati! Consectetur ducimus blanditiis dolore distinctio natus, culpa alias enim commodi fugiat?</p>
            
                <div id="pie" class="row" >
                    <hr id=hr>
                    <div class="col-12">
                        <i class="bi bi-facebook"></i> &nbsp;
                        <i class="bi bi-instagram"></i> &nbsp;
                        <i class="bi bi-whatsapp"></i> &nbsp;
                        <i class="bi bi-youtube"></i>
                    </div>
                </div>
        </div>

        
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
</body>

</html>