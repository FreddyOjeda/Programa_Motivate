<?php if ($this->session->userdata('logueado') == TRUE) { ?>
    <div class="container-fluid">

        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 mt-4">
                <h3 class="nombre_usuario">Hola, <?= $this->session->userdata('nombre') ?> <?= $this->session->userdata('apellido') ?></h3>
                <p> <?php date_default_timezone_set("America/Bogota") ?>
                    <?= date('Y-m-d') ?>
                </p>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 mt-4 my-auto">
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-puntos puntos parpadea" data-toggle="modal" data-target="#exampleModal">
                    <img class="img-fluid" src="<?= base_url() ?>public/images/icons/start.png" alt=""> <strong> 70 Puntos</strong>
                </button>

            </div>
        </div>

        <div class="row">
            <div class="col-lg-12 p-4">
                <h3><strong>Clasificación</strong></h3>
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
            <div class="col-lg-12 p-4">
                <h3><strong>Actividades</strong></h3>
                <p>!Recuerda que debes asistir a todas las actividades¡</p>
            </div>
        </div>

        <div class="row">
            <?php if ($actividades) { ?>
                <?php foreach ($actividades as $a) { ?>
                    <div class="col-lg-2 p-3">
                        <div class="card my-auto actividad">
                            <div class="card-body">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-4">
                                            <img src="<?= base_url() ?>public/images/actividades/<?= $a->imagen ?>" alt="Programa Motivate">
                                        </div>
                                        <div class="col-8 my-auto">
                                            <h5>20 puntos</h5>
                                        </div>
                                    </div>
                                    <p><?= substr($a->nombre, 0, 18);  ?></p>
                                    <a href=""> Ver Detalle > </a>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            <?php } ?>
        </div>



        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel"><strong>Reglas Generales del Programa </strong></h5>

                    </div>
                    <div class="modal-body">
                        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
                            </ol>
                            <div class="carousel-inner">

                                <div class="carousel-item active">
                                    <ul>
                                        <li>
                                            Pueden participar todos los colaboradores que tengan contrato directo vigente con cualquiera de nuestras organizaciones.
                                        </li>
                                        <li>Los colaboradores que tengan llamados de atención, sanciones o incumplimientos al reglamento interno, podrán participar. Sin embargo, no podrán redimir los puntos al finalizar el periodo de premiación. </li>
                                        <li>Se realizarán dos premiaciones al año, una en cada semestre (Junio y Diciembre). </li>
                                        <li>Los puntos no pueden ser cedidos a ninguna otra persona y no se pueden acumular con los de otros periodos. </li>
                                        <li>Todos los puntos serán revisados y aprobados por la alta dirección antes de realizar la premiación. </li>
                                        <li>Se pueden otorgar puntos adicionales por la participación en actividades no programadas.</li>
                                    </ul>

                                </div>
                                <div class="carousel-item">
                                    <h5><strong>Premios a Otorgar</strong></h5>
                                    <p>En cada semestre, se premiara a los cinco colaboradores que obtuvieron mayores puntajes</p>
                                    <div class="text-center">
                                        <h3>PRIMER PUESTO <br> 1 día de trabajo libre <br> personas a premiar dos por semestre </h3>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="text-center">
                                        <h3>SEGUNDO PUESTO <br> 1 bono por $50.000 COP de crepes & Waffles <br> personas a premiar dos por semestre </h3>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="text-center">
                                        <h3>TERCER PUESTO <br> Canasta de frutas <br> personas a premiar dos por semestre </h3>
                                    </div>
                                </div>

                                <div class="carousel-item">
                                    <div class="text-center">
                                        <h3>CUARTO PUESTO <br> Bono de Falabella <br> personas a premiar dos por semestre </h3>
                                    </div>
                                </div>

                                <div class="carousel-item">
                                    <div class="text-center">
                                        <h3>QUINTO PUESTO <br> Bono de Exito <br> personas a premiar dos por semestre </h3>
                                    </div>
                                </div>

                                <div class="carousel-item">
                                    <h5><strong>Sanciones</strong></h5>
                                    <p>En caso de que la participación de un colaborador sea deficiente en el semestre (Inferior a 100 puntos), podrá recibir las siguientes amonestaciones.</p>
                                    <div class="container">
                                        <div class="row  pl-sanciones">
                                            <div class="col-6  my-auto">
                                                <h4 class="text-100">100 puntos</h4>
                                                <p>Llamado de atención verbal del líder y del área de SSTA</p>
                                            </div>
                                            <div class="col-6 text-left">
                                                <img class="img-fluid" src="<?= base_url() ?>public/images/sanciones/100.png" alt="">
                                            </div>

                                            <div class="col-6  my-auto">
                                                <h4 class="text-70">70 puntos</h4>
                                                <p>Descargos</p>
                                            </div>
                                            <div class="col-6 ">
                                                <img class="img-fluid" src="<?= base_url() ?>public/images/sanciones/70.png" alt="">
                                            </div>

                                            <div class="col-6 my-auto">
                                                <h4 class="text-60">60 puntos</h4>
                                                <p>Llamado de atención por escrito</p>
                                            </div>
                                            <div class="col-6">
                                                <img class="img-fluid" src="<?= base_url() ?>public/images/sanciones/60.png" alt="">
                                            </div>

                                            <div class="col-6  my-auto">
                                                <h4 class="text-40">40 puntos</h4>
                                                <p>Sanción</p>
                                            </div>
                                            <div class="col-6">
                                                <img class="img-fluid" src="<?= base_url() ?>public/images/sanciones/40.png" alt="">
                                            </div>

                                        </div>
                                    </div>

                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

<?php } else { ?>
    <?php redirect('Welcome/logout') ?>
<?php } ?>