<div id="content-header">
  <div id="content-header">
    <div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">Table</a> </div>
    <h1>Table Mata Kuliah</h1>
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
                    Kode Matkul
                  </th>
                  <th>
                    Nama Matkul
                  </th>
                  <th>
                    SKS
                  </th>
                  <th>
                    Semester
                  </th>

                </tr>
              </thead>
            <tbody>
              <?php
              foreach ($matkul as $row):
              ?>
              <tr>
                <td>
                  <?=$row['kode_matkul']?>
                </td>
                <td>
                  <?=$row['nama_matkul']?>
                </td>
                <td>
                  <?=$row['sks']?>
                </td>
                <td>
                  <?=$row['semester']?>
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