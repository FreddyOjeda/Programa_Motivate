<?php if ($this->session->userdata('logueado') == TRUE) { ?>
    <div class="container-fluid">
        <div class="row">
            <?php if ($nombreActividad) { ?>
                <?php foreach ($nombreActividad as $a) { ?>
                    <h3><?=$a->nombre?></h3>
                <?php } ?>
            <?php } ?>
            <div class="col-lg-12">
                <table class="table table-striped">
                    <thead class="thead-dark">
                        <tr>
                            <th>Nombre Capacitacion</th>
                            <th>Fecha</th>
                            <th>Puntuacion</th>
                            <th>Observaciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if ($detalleActividad) { ?>
                            <?php foreach ($detalleActividad as $a) { ?>
                                <tr>
                                    <td><?= $a->nombreActividad ?></td>
                                    <td><?= $a->fechaCreacion ?></td>
                                    <td><?= $a->puntos ?></td>
                                    <td><?= $a->observaciones ?></td>
                                </tr>
                            <?php } ?>
                        <?php } ?>
                    </tbody>
                </table>

            </div>
        </div>
    </div>
<?php } else { ?>
    <?php redirect('Welcome/logout') ?>
<?php } ?>