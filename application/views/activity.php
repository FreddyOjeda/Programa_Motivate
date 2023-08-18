<?php if ($this->session->userdata('logueado') == TRUE) { ?>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12"></div>
        </div>
    </div>
<?php } else { ?>
    <?php redirect('Welcome/logout') ?>
<?php } ?>