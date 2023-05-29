<?php
include_once "./conexion.php";
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Vision</title>
    <link rel="shortcut icon" href="./src/LOGO/logo.png" type="image/x-icon">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@300;400;500&display=swap" rel="stylesheet">
</head>

<body>
    <header class="flex">
        <div class="nav">
            <img src="./src/LOGO/logoletrasgrandes.png" alt="">
        </div>
    </header>
    <div class="flex" id="oscuro">
        <div class="container">
            <h2 class="flex" id="titulo">INICIO DE SESION</h2>
            <br>

            <form action="./login.proc.php" method="POST">
                <div class="inputs">
                    <label for="email">Usuario:</label>
                    <input type="text" class="form-control" id="email" name="username">
                </div>
                <div class="inputs">
                    <label for="password">Contraseña:</label>
                    <input type="password" class="form-control" id="password" name="password">
                </div>
                <br>
                <p>Usuario y/o contraseña incorrectos</p>
                <button type="submit" name="login" value="login" class="boton">Iniciar sesión</button>
            </form>
        </div>
    </div>
</body>

<style>
        * {
            margin: 0;
            padding: 0;
            font-family: 'Rubik', sans-serif;
        }

        html {
            color: white;
            font-family: 'Rubik', sans-serif;
        }

        body::before {
            content: "";
            position: fixed;
            height: 100vh;
            width: 100%;
            background: url(./src/FONDOCOLOR2.jpg);
            background-size: cover;
            z-index: -1;
        }

        header {
            background-image: linear-gradient(rgba(0, 0, 0, 0.9) 0%, rgba(0, 0, 0, 0.4) 100%);
            height: 20vh;
        }

        .nav img {
            height: 12vh;
        }

        .container {
            margin-top: -8vh;
            width: 400px;
            padding: 4vh;
            padding-bottom: 2vh;
            background-color: rgba(0, 0, 0, 0.4);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            border-radius: 4vh;
        }

        .container .boton {
            margin-top: 3vh;
            margin-bottom: 2vh;
        }

        #titulo {
            font-weight: 500;
            font-size: 3.5vh;
        }

        #oscuro {
            height: 80vh;
            background-color: rgba(0, 0, 0, 0.4);
        }

        @keyframes fade-in {
            0% {
                opacity: 0;
                transform: translateY(-20px);
            }

            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .container h2 {
            text-align: center;
            margin-top: 0;
        }

        .inputs {
            margin-top: 2vh;
            margin-right: 2vh;
        }

        .inputs label {
            margin-bottom: 1vh;
        }

        .inputs label {
            display: block;
            margin-bottom: 5px;
        }

        .form-control {
            width: 100%;
            padding: 8px;
            font-size: 16px;
            border: none;
            background-color: rgba(0, 0, 0, 0.4);
            color: #fff;
            border-radius: 4px;
        }

        .form-control:focus {
            outline: none;
            background-color: rgba(0, 0, 0, 0.4);
        }

        .boton {
            display: block;
            width: 100%;
            padding: 10px;
            font-size: 2vh;
            border: none;
            background: linear-gradient(to right, #b41d6e, #043689);
            color: white;
            border-radius: 4vh;
            cursor: pointer;
            transition: 0.5s;
        }

        .boton:hover {
            background: white;
            color: #0444ab;
            transition: 0.5s;
            font-size: 2.5vh;
        }

        #registrarse {
            color: white;
            font-weight: 300;
            font-size: 1.5vh;
            text-align: center;
        }

        .alert-container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            margin-top: 20px;
        }

        .alert {
            display: none;
            margin-top: 10px;
            padding: 10px;
            background-color: #ff3333;
            color: #fff;
            border-radius: 4px;
            text-align: center;
        }

        .show {
            display: block;
        }

        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.5);
            align-items: center;
            justify-content: center;
        }

        .modal-contenido {
            background-color: rgba(0, 0, 0, 0.8);
            border-radius: 5px;
            padding: 20px;
            text-align: center;
            position: relative;
        }

        .cerrar {
            color: rgba(0, 0, 0, 0.8);
            float: right;
            font-size: 28px;
            font-weight: bold;
            cursor: pointer;
        }

        .cerrar:hover,
        .cerrar:focus {
            color: rgba(0, 0, 0, 0.8);
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .btn-continuar {
            display: none;
        }

        .btn-cerrar {
            display: none;
        }

        .flex {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        @media only screen and (max-width: 780px) {
            .nav img {
                height: 6vh;
            }

            .container {
                width: 290px;
                padding: 4vh;
                padding-bottom: 2vh;
            }
        }
    </style>



</html>