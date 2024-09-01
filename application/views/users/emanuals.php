
<?php $this->load->view('includes/header'); ?>

<div class="container-fluid bg">
    <div class="row">
        <div class="col-md-4 col-sm-4 col-xs-12"></div>
        <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="form-group"> <br/>
                <center><label><h2>E-Manuals</h2></label></center> <br/><br/>
            </div>
        </div>
        <div class="col-md-4 col-sm-4 col-xs-12"></div>
    </div>
</div>

<div class="container" style="margin-top:25px">
    <h3>List of E-Manuals</h3> <br/>
    <table id="table" class="table table-bordered">
        <thead>
            <tr>
                <th>File Title</th>
                <th>Date Uploaded</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($emanuals as $emanual): ?>
            <tr>
                <td><?= $emanual['File_Title'] ?></td>
                <td><?= $emanual['Date_Uploaded'] ?></td>
                <td>
                    <a href="<?= site_url('emanuals/view/' . $emanual['File_ID']) ?>" class="btn btn-warning" target="_blank">
                        <span class="glyphicon glyphicon-eye-open"></span> View
                    </a>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div> <br/><br/><br/><br/>
<?php $this->load->view('includes/footer'); ?>