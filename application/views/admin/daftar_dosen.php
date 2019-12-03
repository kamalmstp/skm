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
      <div class="widget-content nopadding">
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
            $db = $this->db->get_where('jadwalfh', array('dosen1' => $row['dosen1']), 1);
            $id = $db->row();
          ?>
          <tr>
            <td>
              <?=$no++;?>
            </td>
            <td>
              <?=$row['dosen1']?>
            </td>
            <td style="text-align: center;">
              <div class="btn btn-warning btn-mini">
                <a href="<?=site_url().'admin/detail_dosen/'.$id->id;?>"><i class="icon-eye-open"></i> Lihat</a>
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

<script type="text/javascript">
  $(document).ready(function() {
      $('#my-example').dataTable(); 
  });
</script>