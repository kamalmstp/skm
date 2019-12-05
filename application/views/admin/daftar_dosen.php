<div id="content-header">
  <div id="content-header">
    <div id="breadcrumb"> <a href="" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">Tables</a> </div>
    <h1>Table Dosen</h1>
    <hr>
  </div>
</div>
<div class="container-fluid">
  <div class="row-fluid">
    <div class="widget-box">
      <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
        <h5><?=$page_title?></h5>
      </div>
      <?php echo $this->session->flashdata('msg'); ?>
      <div class="widget-content nopadding">
        <ul class="bs-docs-tooltip-examples">
          <li class="span6">
            <a class="btn btn-info btn-normal pull-left" href="<?=site_url('admin/dosen_get');?>">Perbarui Data Dosen</a>
          </li>
        </ul>
        <div class="row-fluid">
          <div class="span12">
            <table id="my-example" class="table table-bordered data-table">
              <thead>
                <tr>
                  <th>
                    No
                  </th>
                  <th>
                    Nama Dosen
                  </th>
                  <th>
                    Aksi
                  </th>
                </tr>
              </thead>
              <tbody>
                <?php
                  $no = 1;
                  foreach ($dosen as $row):
                ?>
                <tr>
                  <td>
                    <?=$no++;?>
                  </td>
                  <td>
                    <?=$row['nama_dosen'];?>
                  </td>
                  <td style="text-align: center;">
                    <div class="btn btn-warning btn-mini">
                      <a href="<?=site_url().'admin/detail_dosen/'.$row['id_dosen'];?>"><i class="icon-eye-open"></i> Lihat</a>
                    </div>
                  </td>
                </tr>
                <?php
                endforeach;
                ?>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
  $(document).ready(function() {
      $('#my-example').dataTable(); 
  });
</script>