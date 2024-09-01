<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Emanuals extends CI_Controller {

    public function __construct() {
        parent::__construct();
        // Load the database and any necessary models or helpers
        $this->load->database();
        $this->load->helper('url');
        $this->load->helper('file');
    }

    public function index() {
        $data["emanuals"] = $this->db->get('storage_emanuals')->result_array();
        $this->load->view('users/emanuals', $data);
    }

    public function view_manual($file_id) {
        // Check if file ID is provided
        if(isset($file_id)) {
            // Query to fetch the file details from the database
            $this->db->where('File_ID', $file_id);
            $query = $this->db->get('storage_emanuals');

            if ($query->num_rows() > 0) {
                $file_data = $query->row();
                $file_name = $file_data->File_Name;
                $user_id = $file_data->User_ID;

                // Construct the correct file path
                $file_path = FCPATH . 'files_emanuals/' . $user_id . '/' . $file_name;
                ob_start(); // Start output buffering
                // Check if the file exists
                if (file_exists($file_path)) {
                    // Clear the output buffer and set headers
                    // ob_clean();
                    // flush();

                    header('Content-Type: application/pdf');
                    header('Content-Disposition: inline; filename="' . $file_name . '"');
                    header('Content-Transfer-Encoding: binary');
                    header('Accept-Ranges: bytes');

                    // Output the file
                    @readfile($file_path);
                    // readfile($file_path);
                } else {
                    log_message('error', 'File does not exist at path: ' . $file_path);
                    show_404();
                }
                ob_end_flush(); // End output buffering
            } else {
                // Handle the case where no file is found
                show_404();
            }
        } else {
            // Handle the case where no file ID is provided
            show_404();
        }
    }
}
