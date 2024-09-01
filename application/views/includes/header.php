<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QAADMS</title>
    <link rel="shortcut icon" href="<?php echo base_url('assets/img/favicon.png'); ?>" type="image/x-icon">
    <!-- Bootstrap CSS -->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    <link href="https://cdn.datatables.net/v/dt/dt-2.1.4/datatables.min.css" rel="stylesheet">
    <link href="assets/css/custom-css.css" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.datatables.net/v/dt/dt-2.1.4/datatables.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            $('#table').DataTable({
                "paging": true,
                "searching": true,
                "ordering": true,
                "info": true
            });
        });
    </script>

</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
    <img src="<?php echo base_url('assets/img/logo.png'); ?>" alt="logo"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
    <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="#">Home</a>
    </li>
    <?php if(!$this->session->userdata("username")) {
        echo '<li class="nav-item">
            <a class="nav-link" href='.base_url("/login").'> Login</a>
        </li>';
    } ?>
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="true">
            Tools
        </a>
        <ul class="dropdown-menu dropdown-menu-end">
            <li><a class="dropdown-item" href="<?php echo base_url('dcrform/list'); ?>">Document Change Request <?php echo ($this->session->userdata('role')=='Requester') ? "List" : "(Received Forms)"; ?></a></li>
            <?php echo ($this->session->userdata('role')=='Requester')
                ? '<li><a class="dropdown-item" href="'.base_url('dcrform').'"> Document Change Request Form</a></li>' : ''; ?>
            <?php echo ($this->session->userdata('role')=='Document Controller')
                ? '<li><a class="dropdown-item" href="#">Audit Summary Reports (TBA)</a></li>': ''; ?>
            <li><a class="dropdown-item" href="<?php echo base_url('emanuals/list'); ?>">E-manuals</a></li>
        </ul>
    </li>
    <?php if($this->session->userdata("username")) {
        echo '
            <li class="nav-item">
                <a class="nav-link" href="#">Profile Settings (TBA) </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="'.base_url('auth/logout').'">Logout</a>
            </li>';
    } ?>
</ul>

    </div>
  </div>
</nav>