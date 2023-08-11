<?php if ($this->session->userdata('logueado') == TRUE) { ?>
    <div class="container-fluid">

        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 mt-4">
                <h3>Hola, <?= $this->session->userdata('nombre') ?> <?= $this->session->userdata('apellido') ?></h3>
                <p> <?php date_default_timezone_set("America/Bogota") ?>
                    <?= date('Y-m-d') ?>
                </p>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12  mt-4">
                <h4> <i></i>70 Puntos</h4>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <h3>Clasificación</h3>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-1 col-md-1 col-sm-12"> </div>
            <div class="col-lg-2 col-md-2 col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="container">
                            <div class="row my-auto">
                                <div class="col-2">
                                    <h1>1</h1>
                                </div>
                                <div class="col-10">
                                    <h4> Jazmin Benavides</h4>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="container">
                            <div class="row my-auto">
                                <div class="col-2">
                                    <h1>2</h1>
                                </div>
                                <div class="col-10">
                                    <h4> Luisa Cuaspud</h4>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
            <div class="col-lg-2 col-md-2 col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="container">
                            <div class="row my-auto">
                                <div class="col-2">
                                    <h1>3</h1>
                                </div>
                                <div class="col-10">
                                    <h4> Juan David Vega</h4>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
            <div class="col-lg-2 col-md-2 col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="container">
                            <div class="row my-auto">
                                <div class="col-2">
                                    <h1>4</h1>
                                </div>
                                <div class="col-10">
                                    <h4> Roger Romero</h4>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
            <div class="col-lg-2 col-md-2 col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="container">
                            <div class="row my-auto">
                                <div class="col-2">
                                    <h1>5</h1>
                                </div>
                                <div class="col-10">
                                    <h4> Ingrid Paola Diaz</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-lg-1 col-md-1 col-sm-12"> </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <h3>Actividades</h3>
                <p>!Recuerda que debes asistir a todas las actividades¡</p>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-2">
                <div class="card">
                    <div class="card-body">
                        <div class="container">
                            <div class="row">
                                <div class="col-6">
                                    <img src="<?= base_url() ?>public/img/capacitaciones.jpg" alt="Programa Motivate">
                                </div>
                                <div class="col-6">
                                    <h4>20 puntos</h4>
                                </div>
                            </div>
                            <p>Capacitaciones</p>
                            <a href=""> Ver Detalle > </a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
<?php } else { ?>
    <?php redirect('Welcome/logout') ?>
<?php } ?>