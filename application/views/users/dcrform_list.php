<?php $this->load->view('includes/header'); ?>

    <div class="container">
        <center>
        <?php switch ($this->session->userdata('role')) {
            case 'Requester':
                echo '<h2>Document Change Request <br/> (List of Submitted Forms)</h2>';
                break;
            case 'Department Head':
                echo '<h2>Requester <img src='.base_url('assets/img/dcrarrow.png').' alt="dcrarrow" height="50" width="90"/> Department Head</h2>';
                break;
            case 'Document Controller':
                echo '<h2>Department Head <img src='.base_url('assets/img/dcrarrow.png').' alt="dcrarrow" height="50" width="90"/> Document Controller</h2>';
                break;
            default:
                # code...
                break;
        }?>
        </center>
        <center><h2>(Document Change Request - <?php echo ($this->session->userdata('role')=='Requester') ? 'List of Submitted' : 'Received'?> Forms)</h2></center>
        <br/><br/><br/>

        <center><p><strong>Your office requests will show up here</strong></p></center>
        <br/>
        <center><p><?php echo "Your account's office is: <strong>" . $office . "</strong>"; ?></p></center>


        <br/><br/>

        <table id="table" class="table table-bordered">
            <thead>
                <tr>
                    <th>Date Requested</th>
                    <th>DCR No.</th>
                    <th>From</th>
                    <th>Status (Requester)</th>
                    <th>Status (Department Head)</th>
                    <th>Status (Document Controller)</th>
                    <th>Status (Director for QAIE)</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach($dcr_list as $dcr): ?>
                <tr class="del_qaiedirector_dcrform<?php echo $dcr['Random_Unique_Code'];?>">
                    <td><?php echo $dcr['date_uploaded_dttbl']; ?></td>
                    <td><?php echo $dcr['Year_Generated'] . "-" . $dcr['DCRForm_ID']; ?></td>
                    <td><?php echo $dcr['From_Office']; ?></td>
                    <td><?php echo $dcr['Status_Requester']; ?></td>
                    <td><?php echo empty($dcr['Status_DeptHead']) ? "<i style='color:grey;'>Pending</i>" : $dcr['Status_DeptHead']; ?></td>
                    <td><?php echo empty($dcr['Status_DocuController']) ? "<i style='color:grey;'>Pending</i>" : $dcr['Status_DocuController']; ?></td>
                    <td>
                        <?php echo empty($dcr['Request_Status']) ? "<i style='color:grey;'>Pending</i>" : $dcr['Request_Status']; ?>
                        <?php if($dcr['Request_Status'] == 'Request Accepted'): ?>
                        <a href="<?php echo site_url('pdf/requester_generate_dcrsf/' . $dcr['Random_Unique_Code']); ?>" class='btn btn-primary' target='_blank'>
                            <span class='glyphicon glyphicon-print'></span> Generate PDF
                        </a>
                        <?php elseif($dcr['Request_Status'] == 'Request Denied'): ?>
                        <br/>
                        <?php echo "(" . $dcr['QAIE_Directors_Comments'] . ")"; ?>
                        <?php endif; ?>
                    </td>
                    <td>
                        <button class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#view_modal<?php echo $dcr['Random_Unique_Code']; ?>">
                            <span class="glyphicon glyphicon-eye-open"></span> <?php echo ($this->session->userdata('role')=='Requester') ? 'View Details' : 'Action/View'; ?>
                        </button>
                        <a  class="btn btn-primary" href="<?php echo site_url('docucontroller/dcrform/generate_pdf/' . $dcr['Random_Unique_Code']); ?>">
                        <span class="glyphicon glyphicon-eye-open"></span> Generate PDF
                        </a>
                    </td>
                </tr>

                <!-- Modal -->
                <div class="modal fade" id="view_modal<?php echo $dcr['Random_Unique_Code']; ?>" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel"><?php echo ($this->session->userdata('role') == 'Requester') ? 'View Details':'Request Action'; ?></h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <?php
                                $update_link = '';
                                switch ($this->session->userdata('role')) {
                                    case 'Department Head':
                                        $update_link = 'depthead/dcrform/update';
                                        break;
                                    case 'Director for QAIE':
                                        $update_link = 'qaiedirector/dcrform/update/' . $dcr['Random_Unique_Code'];
                                        break;

                                    default:
                                        # code...
                                        break;
                                }
                            ?>
                            <?php echo form_open( $update_link ); ?>
                            <div class="modal-body">
                            <?php
                            if($this->session->userdata('role')== 'Director for QAIE') {
                                if($dcr['Request_Status']=='Request Accepted' || $dcr['Request_Status']=='Request Denied'){
                                    echo "<div class='form-group'><p style='color:grey; font-size:15px;'>*Note: You already submitted this form. Re-submitting this form will change the current data of this document change request.</p></div>";
                                }
                            }
							?>
                                <div class="form-group">
                                    <!-- HIDDEN: -->
                                    <input type="hidden" name="Random_Unique_Code_Brkt" value="<?php echo $dcr['Random_Unique_Code']?>" class="form-control" required="required" readonly="readonly" />
                                </div>
                                <div class="form-group">
                                    <!-- HIDDEN: -->
                                    <input type="hidden" name="Status_DeptHead_Brkt" value="Already Sent to Document Controller" class="form-control" required="required" />
                                </div>
                                <?php date_default_timezone_set('Asia/Manila'); ?>
                                <?php
                                    if ($this->session->userdata('role') ==='Director for QAIE') {
                                        echo '
                                        <div class="form-group">
                                            <label>QAIE Director\'s Comments</label>
                                            <input type="text" name="QAIE_Directors_Comments_Brkt" value="'.$dcr['QAIE_Directors_Comments'].'" class="form-control" />
                                        </div>
                                        <div class="form-group">
                                            <label>Request Status</label>
                                                <select name="Request_Status_Brkt" class="form-control" required="required">
                                                    <option value=""'. (($dcr['Request_Status']=='')? "selected": '').' disabled>---Select Request Status---</option>
                                                    <option value="Request Denied" '.(($dcr['Request_Status']=='Request Denied') ? "selected" : "").'>Request Denied</option>
                                                    <option value="Request Accepted" '.(($dcr['Request_Status']=='Request Accepted') ? "selected" : "").'>Request Accepted</option>
                                                </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Name Of QAIE Director</label>
                                            <input type="text" name="Name_Of_QAIE_Director_Brkt" value="'. $dcr['Name_Of_QAIE_Director'] .'" class="form-control" required="required" />
                                        </div>
                                        <div class="form-group">
                                            <label>Date Of QAIE Director Action</label>
                                            '. (($dcr['Request_Status']=='Request Accepted' || $dcr['Request_Status']=='Request Denied')
                                                ? "<p style='color:grey; font-size:15px;'>*Note: The date below will be the new data, if the form is re-submitted.</p>": ''). '
                                            <input type="text" name="Date_Of_QAIE_Director_Action_Brkt" value="'. date("m/d/Y").'" class="form-control" required="required" readonly="readonly" style="background-color:white;color:grey;" />
                                        </div>
                                        ';
                                    }
                                ?>


                                <div class="form-group">
                                    <label>Name Of Approving Authority</label>
                                    <input
                                        type="text"
                                        name="Name_Of_Approving_Authority_Brkt"
                                        value="<?php echo $dcr['Name_Of_Approving_Authority']?>"
                                        class="form-control"
                                        required="required"
                                        maxlength="100"
                                        <?php if($dcr['Status_DeptHead']=='Already Sent to Document Controller'){echo "readonly='readonly'";} ?> />
                                </div>
                                <div class="form-group">
                                    <label>Date Of Approval</label>
                                    <input type="text" name="Date_Of_Approval_Brkt" value="<?php if($dcr['Status_DeptHead']==''){date_default_timezone_set('Asia/Manila');echo date("m/d/Y");} else if($dcr['Status_DeptHead']=='Already Sent to Document Controller'){echo $dcr['Date_Of_Approval'];} ?>" class="form-control" required="required" readonly="readonly" <?php if($dcr['Status_DeptHead']==''){echo "style='background-color:white;color:grey;'";} ?> />
                                </div>

                                <div class="form-group">
                                    <label>Date Of Request</label>
                                    <input type="text" name="Date_Of_Request_Brkt" value="<?php echo $dcr['Date_Of_Request']?>" class="form-control" required="required" readonly="readonly" />
                                </div>
                                <div class="form-group">
                                    <label>To</label>
                                    <input type="text" name="To_Who_Brkt" value="<?php echo $dcr['To_Who']?>" class="form-control" required="required" readonly="readonly" />
                                </div>
                                <div class="form-group">
                                    <label>From</label>
                                    <input type="text" name="From_Office_Brkt" value="<?php echo $dcr['From_Office']?>" class="form-control" required="required" readonly="readonly" />
                                </div>
                                <div class="form-group">
                                    <label>DCR No.</label>
                                    <input type="text" value="<?php echo $dcr['Year_Generated']."-".$dcr['DCRForm_ID'];?>" class="form-control" readonly="readonly" />
                                </div>
                                <div class="form-group">
                                    <label>Type Of Request</label>
                                    <input type="text" name="Type_Of_Request_Brkt" value="<?php echo $dcr['Type_Of_Request']?>" class="form-control" required="required" readonly="readonly" />
                                </div>
                                <div class="form-group">
                                    <label>Document No.</label>
                                    <input type="text" name="Document_No_Brkt" value="<?php echo $dcr['Document_No']?>" class="form-control" required="required" readonly="readonly" />
                                </div>
                                <div class="form-group">
                                    <label>Document Title</label>
                                    <input type="text" name="Document_Title_Brkt" value="<?php echo $dcr['Document_Title']?>" class="form-control" required="required" readonly="readonly" />
                                </div>
                                <div class="form-group">
                                    <label>Revision Status</label>
                                    <input type="text" name="Revision_Status_Brkt" value="<?php echo $dcr['Revision_Status']?>" class="form-control" required="required" readonly="readonly" />
                                </div>
                                <div class="form-group">
                                    <a href="view_pdf/<?php echo $dcr['Random_Unique_Code'];?>" class="btn btn-warning" target="_blank">
                                        <span class="glyphicon glyphicon-eye-open"></span> View Draft Copy
                                    </a>
                                </div>
                                <div class="form-group">
                                    <label>Changes Requested</label>
                                    <textarea name="Changes_Requested_Brkt" class="form-control" style="resize:none;" rows="5" cols="40" required="required" readonly="readonly"><?php echo $dcr['Changes_Requested']?></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Reason For The Change</label>
                                    <textarea name="Reason_For_The_Change_Brkt" class="form-control" style="resize:none;" rows="5" cols="40" required="required" readonly="readonly"><?php echo $dcr['Reason_For_The_Change']?></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Requested By</label>
                                    <input type="text" name="Requested_By_Brkt" value="<?php echo $dcr['Requested_By']?>" class="form-control" required="required" readonly="readonly" />
                                </div>
                                <div class="form-group">
                                    <label>New Document No.</label>
                                    <input type="text" name="New_Document_No_Brkt" value="<?php echo $dcr['New_Document_No']?>" class="form-control" required="required" readonly="readonly" />
                                </div>
                                <div class="form-group">
                                    <label>New Document Version</label>
                                    <input type="text" name="New_Document_Version_Brkt" value="<?php echo $dcr['New_Document_Version']?>" class="form-control" required="required" readonly="readonly" />
                                </div>
                                <div class="form-group">
                                    <label>New Document Revision</label>
                                    <input type="text" name="New_Document_Revision_Brkt" value="<?php echo $dcr['New_Document_Revision']?>" class="form-control" required="required" readonly="readonly" />
                                </div>
                            </div>
                            <div class="modal-footer">
                                <?php echo ($this->session->userdata('role') == "Department Head" && $dcr['Status_DeptHead']=='')
                                ? '<button name="update" type="submit" class="btn btn-warning"><span class="glyphicon glyphicon-ok"></span> Submit to Document Controller </button>'
                                : '' ?>
                                <?php echo ($this->session->userdata('role') == "Director for QAIE" && $dcr['Request_Status']=='' && isset($dcr['Status_DocuController']) && !empty($dcr['Status_DocuController']))
                                ? '<button name="update" type="submit" class="btn btn-warning"><span class="glyphicon glyphicon-ok"></span> Submit to Requester </button>'
                                : '' ?>
                                <?php echo form_close(); ?>
                                <?php echo form_open('docucontroller/dcrform/update/'.$dcr['Random_Unique_Code']); ?>
                                <?php if($this->session->userdata('role') == "Document Controller" && $dcr['Status_DocuController']=='' && isset($dcr['Status_DeptHead']) && !empty($dcr['Status_DeptHead'])){
                                    echo "<button name='update' type='submit' class='btn btn-warning'><span class='glyphicon glyphicon-ok'></span>
                                    Submit to Director for QAIE </button>";}?>
                                <?php echo form_close(); ?>
                            </div>

                        </div>
                    </div>

                </div>
                <!-- End Modal -->
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
<?php $this->load->view('includes/footer'); ?>