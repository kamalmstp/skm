<div id="content-header">
  <div id="content-header">
    <div id="breadcrumb"> <a href="/" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">Tables</a> </div>
    <h1>Table Dosen</h1>
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
                    Kode Matkul
                  </th>
                  <th>
                    Nama Matkul
                  </th>
                  <th>
                    Dosen 1
                  </th>
                  <th>
                    Dosen 2
                  </th>
                  <th>
                    Dosen 3
                  </th>
                  <th>
                    Dosen 4
                  </th>
                  <th>
                    Dosen 5
                  </th>
                  <th>
                    Dosen 6
                  </th>
                </tr>
              </thead>
            <tbody>
              <?php
              foreach ($list as $row):
              ?>
              <tr>
                <td>
                  <?=$row['kode_matkul']?>
                </td>
                <td>
                  <?=$row['nama_matkul']?>
                </td>
                <td>
                  <?=$row['dosen1']?>
                </td>
                <td>
                  <?=$row['dosen2']?>
                </td>
                <td>
                  <?=$row['dosen3']?>
                </td>
                <td>
                  <?=$row['dosen4']?>
                </td>
                <td>
                  <?=$row['dosen5']?>
                </td>
                <td>
                  <?=$row['dosen6']?>
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