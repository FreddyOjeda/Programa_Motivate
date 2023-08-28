<?php
defined('BASEPATH') or exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Programa Motivate</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap">
    <link rel="stylesheet" href="<?= base_url() ?>public/css/styles.css">
</head>

<body class="login">
    <?php $mainUrl = $this->uri->segment(1); ?>
    <?php if ($mainUrl != '') { ?>
        <nav class="navbar navbar-expand-sm bg-motivate navbar-light justify-content-between visibleDesktop">
            <a class="navbar-brand" href="<?= base_url() ?>welcome/main"><img class="img-fluid-logo" src="<?= base_url() ?>public/images/logo.png" alt="Logo Motivate"></a>
            <ul class="navbar-nav">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle dropdownUser" href="#" id="navbardrop" data-toggle="dropdown">
                        <strong><?=$this->session->userdata('nombre')?> <?=$this->session->userdata('apellido')?></strong>
                        <br>
                        <?=$this->session->userdata('cargo')?>
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="<?= base_url() ?>welcome/logout">Cerrar Sesion</a>
                    </div>
                </li>
            </ul>
        </nav>
        <nav class="navbar navbar-expand-sm bg-motivate navbar-light visibleMobile">
            <a class="navbar-brand" href="<?= base_url() ?>welcome/main"><img class="img-fluid-logo" src="<?= base_url() ?>public/images/logo.png" alt="Logo Motivate"></a>
            <ul class="navbar-nav">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle dropdownUser" href="#" id="navbardrop" data-toggle="dropdown">
                        <strong><?=$this->session->userdata('nombre')?> <?=$this->session->userdata('apellido')?></strong>
                        <br>
                        <?=$this->session->userdata('cargo')?>
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="<?= base_url() ?>welcome/logout">Cerrar Sesion</a>
                    </div>
                </li>
            </ul>
        </nav>
    <?php } else { ?>
    <?php } ?>