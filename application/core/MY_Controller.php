<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Controller extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->check_login();
    }

    // Example of a reusable method
    private function check_login() {
        if (!$this->session->userdata('username')) {
            // Redirect to the login page if not logged in
            redirect('login');
        }
    }

    // Check if the user has the required role
    protected function check_role($required_roles) {
            // Convert single role to array if necessary
        if (!is_array($required_roles)) {
            $required_roles = array($required_roles);
        }

        $user_role = $this->session->userdata('role');

        if (!in_array($user_role, $required_roles)) {
            show_error('You do not have permission to access this page.', 403);
        }
    }
}
?>