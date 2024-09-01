<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require_once (APPPATH . 'third_party/dompdf/autoload.inc.php');
use Dompdf\Dompdf;



function pdf_create($html, $filename = '', $stream = TRUE) {

    // require_once APPPATH . 'third_party/dompdf/autoload.inc.php';
    $pdf = new Dompdf();
    $pdf->load_html($html);
    $pdf->setPaper('A4', 'portrait');
    $pdf->render();
    if ($stream) {
        $pdf->stream($filename . ".pdf", array("Attachment" => 1));
    } else {
        return $pdf->output();
    }
}
?>