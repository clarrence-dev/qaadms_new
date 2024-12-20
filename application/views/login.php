<?php $this->load->view('includes/header'); ?>
    <div class="container-login">
        <div class="login-box">
        <?php echo validation_errors(); ?>

        <?php if ($this->session->flashdata('error')) {
            echo '<div class="alert alert-danger">' . $this->session->flashdata('error') . '</div>';
        } ?>

        <?php if ($this->session->flashdata('message')) {
            echo '<div class="alert alert-info">' . $this->session->flashdata('message') . '</div>';
        } ?>
        <?php echo form_open('auth/login_submit'); ?>
            <div class="input-group flex-nowrap">
                <!-- <span class="input-group-text" id="addon-wrapping">Username</span> -->
                <input
                    id="username"
                    name="username"
                    type="text"
                    class="form-control"
                    placeholder="Username"
                    aria-label="Username"
                    aria-describedby="addon-wrapping">
            </div>
            <div class="input-group flex-nowrap">
                <!-- <span class="input-group-text" id="addon-wrapping">Password</span> -->
                <input
                    id="password"
                    name="password"
                    type="password"
                    class="form-control"
                    placeholder="Password"
                    aria-label="Password"
                    aria-describedby="addon-wrapping">
            </div>
            <button type="submit" class="btn btn-primary">Login</button>
        <?php echo form_close(); ?>
        </div>
    </div>
<?php $this->load->view('includes/footer'); ?>