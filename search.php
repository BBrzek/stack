<!DOCTYPE html>
<head>
    <title>STACK</title>
    <meta charset='UTF-8'>
    <link rel='stylesheet' href="css/nav.css">
    <link rel='stylesheet' href="css/index.css">
    <link rel='stylesheet' href="css/szot.css">
    <link rel='stylesheet' href="css/search.css">
    <link rel='stylesheet' href="css/log.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="js/log.js"></script>
    <script src="load_data_ajax.js"></script>
</head>
<body class="bg">
<?php
        require("registration.php");
    ?>

    <?php

        require("like.php");
    ?>
    <nav class="navbar nav navbar-expand-md fixed-top container-fluid navbar-dark">
            <img src="css/logo.png">

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div id="collapsibleNavbar" class="justify-content-end collapse navbar-collapse">
                <div class="navbar-nav horizontal-container nav-container__right-side">
                    <a href="index.php" class="pointer">Najnowsze</a>
                    <a href="search.php" class="pointer nav-active">Szukaj</a>
                    <a href="add.php" class="pointer">Wstaw </a>
                    <?php
                        if(isset($_SESSION['username']))
                        { 
                            echo '<span class="logged_user">#'.$_SESSION['username'].'</span>';
                        }else
                        {
                            echo '<span id="toggle_log" class="nav-button nav-button__first-button pointer">Zaloguj się</span>';
                        }
                    ?>
                    <span class="nav-sep"></span>
                    <?php
                        if(isset($_SESSION['username']))
                        { 
                            echo '<form action="" method="POST">';
                            echo '<input type="submit" name="logout" class="nav-button pointer" value="Wyloguj się">';
                            echo '</form>';
                        }else
                        {
                            echo '<span id="toggle_sign" class="nav-button pointer">Zarejestruj się</span>';
                        }
                    ?>
                    
                </div>
            </div>

    </nav>

    <div class="container-lg margin">
        <div class="szot_container row margin">
            <div class="search_container col-lg-4">
                <div class="container-lg">
                    <div class="search-box__header">
                        Wybierz kategorie
                    </div>
                    
                    <label class="search-box__row">
                        <input id="chceck-smieszne" type="checkbox" class="checkbox">
                        <div class="search-box__checkbox">
                        </div> 
                        <div class="search-box__text">
                            Zabawne
                        </div>
                    </label>
                    <label class="search-box__row">
                        <input id="chceck-krajobraz" type="checkbox" class="checkbox">
                        <div class="search-box__checkbox">
                        </div> 
                        <div class="search-box__text">
                            Krajobraz
                        </div>
                    </label>
                    <label class="search-box__row">
                        <input id="chceck-sztuka" type="checkbox" class="checkbox">
                        <div class="search-box__checkbox">
                        </div> 
                        <div class="search-box__text">
                            Sztuka
                        </div>
                    </label>
                    <button id="category_search" class="author_submit">Szukaj</button>
                    <div class="search-box__header">
                        Szukaj autora
                    </div>
                    <input id="author_name" type="text" class="author_input"/>
                    <button id="author_search" class="author_submit">Szukaj</button>
                </div>
            </div>
            <div class="szot_container row col-lg-8">
                <div class="container-lg">
                    <div class="header row align-items-center">
                        <span class="col-sm-4">Wyszukane szoty</span>
                        <div class="col-sm-8">
                            <div class="header__line"></div>
                        </div>
                    </div>
                </div>
                <div class="container-lg">
                    <div id="szot_hook" class="row szot_container">
                            
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="horizontal-container footer">
        <img src="css/logo_f.png">
    </div>
</body>