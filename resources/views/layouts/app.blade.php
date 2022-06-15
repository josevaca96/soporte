<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Grupo Paz</title>
    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
      <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800" rel="stylesheet">
    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <!-- bootstrap -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.0/css/jquery.dataTables.css">
    <!-- Libraries CSS Files -->
  <link href="{{asset('plantilla/lib/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">
  <link href="{{asset('plantilla/lib/animate-css/animate.min.css')}}" rel="stylesheet">
  <link href="{{asset('plantilla/css/style.css')}}" rel="stylesheet">
    <link href="{{ asset('plantilla/img/logo2.png') }}" rel="shortcut icon">
</head>
<body>
    <div id="app">
  <!--==========================
  Sección de encabezado
  ============================-->
  <header id="header">
    <div class="container">
      <div id="logo" class="pull-left">
        <a href="/"><img src="img/logo.png" alt="" title="" /></img></a>
        <!-- Descomenta abajo si prefieres usar una imagen de texto -->
        <!--<h1><a href="#hero">Encabezado 1</a></h1>-->
      </div>
      <nav id="nav-menu-container">
        <ul class="nav-menu">
            @if(Auth::check())
            <li class="menu-active"><a href="/">Inicio</a></li>
            <li><a href="{{ route('activos.index') }}">Activos</a></li>
            @endif
            @guest
                @if (Route::has('register'))
                    <!-- <li class="menu-active"><a href="{{ route('register') }}">Registrarse</a></li> -->
                @endif
                @else
                <li class="menu-has-children"><a>{{ Auth::user()->name }}</a>
                    <ul>
                        <li><a  href="{{ route('logout') }}"
                                onclick="event.preventDefault();
                                document.getElementById('logout-form').submit();">
                                Salir
                            </a>
                            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                @csrf
                            </form>
                        </li>
                    </ul>    
                </li>
            @endguest
        </ul>
      </nav>
    </div>
  </header>
  <!-- #header -->

  <!--==========================
  About Section
  ============================-->
    <!-- <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    Grupo Paz
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                    @if(Auth::check())
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="{{ route('activos.index') }}">Activos</a>
                        </li>
                        @endif    
                    </ul>
                    <ul class="navbar-nav ml-auto">
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }}
                                </a>
                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>
                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav> -->

        <main class="py-4">
            @yield('content')
        </main>
    </div>
    <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
         <!-- Required JavaScript Libraries -->
  <script src="{{asset('plantilla/lib/jquery/jquery.min.js')}}"></script>
  <script src="{{asset('plantilla/lib/bootstrap/js/bootstrap.min.js')}}"></script>
  <script src="{{asset('plantilla/lib/superfish/hoverIntent.js')}}"></script>
  <script src="{{asset('plantilla/lib/superfish/superfish.min.js')}}"></script>
  <script src="{{asset('plantilla/lib/morphext/morphext.min.js')}}"></script>
  <script src="{{asset('plantilla/lib/wow/wow.min.js')}}"></script>
  <script src="{{asset('plantilla/lib/stickyjs/sticky.js')}}"></script>
  <script src="{{asset('plantilla/lib/easing/easing.js')}}"></script>
  <!-- Template Specisifc Custom Javascript File -->
  <script src="{{asset('plantilla/js/custom.js')}}"></script>
  <script src="{{asset('plantilla/contactform/contactform.js')}}"></script>
    </script>
    
</body>
</html>
