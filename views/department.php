<?php require_once("modal/department.php"); ?>
<!-- Main content -->
<section class="content">
    <div class="box box-default">
        <div class="box-header with-border">
            <button id="add" class="btn btn-danger pull-left">Add New Department</button>
        </div>
        <div class="box-body">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>Department Id</th>
                    <th>Department Name</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach($results as $list){ ?>
                    <tr>
                        <td><?php echo $list->department_id; ?></td>
                        <td><?php echo $list->department_name; ?></td>
                        <td><a href="<?php echo base_url(); ?>department/delete_department/<?php echo $list->department_id; ?>"><i class="fa fa-trash" style="color:red"></i></a></td>
                    </tr>
                <?php } ?>
                </tbody>
            </table>
        </div><!-- /.box-body -->
        <div class="box-footer with-border text-center">
            <p><?php echo $links; ?></p>
        </div>
    </div><!-- /.box -->
</section><!-- /.content -->