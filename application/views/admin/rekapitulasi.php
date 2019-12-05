<div id="notifications"><?php echo $this->session->flashdata('msg'); ?></div> 
<br>
<div id="content-header">
  <div id="content-header">
    <div id="breadcrumb"> <a href="" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">Tables</a> </div>
    <h1><?=$page_title;?></h1>
    <hr>
  </div>
</div>
<div class="container-fluid">
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-briefcase"></i> </span>
            <h5><?=$page_title;?></h5>
          </div>
          <div class="widget-content">
            <div class="row-fluid">
              <div class="span6">
                <table class="">
                  <tbody>
                    <tr>
                      <td><h4><?=$page_title.' Kelebihan Mengajar Dosen';?></h4></td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
            <hr>
            <div class="row-fluid">
              <div class="span12">
                <table class="table table-bordered table-invoice-full">
                <!-- <table id="my-example" class="table table-bordered data-table"> -->
                  <thead>
                    <tr>
                      <th class="head0">No</th>
                      <th class="head1">Nama Dosen</th>
                      <th class="head0 right">Prodi</th>
                      <th class="head1 right">Jml Matkul</th>
                      <th class="head0 right">Jml Pertemuan</th>
                      <th class="head0 right">Jml SKS</th>
                      <th class="head0 right">SKS Max</th>
                      <th class="head0 right">Kelebihan SKS</th>
                      <th class="head0 right">Honor Per SKS</th>
                      <th class="head0 right">Jml Yg Dibayarkan</th>
                      <th class="head0 right">Status</th>
                    </tr>
                  </thead>
                  <tbody>
                      <?php $no = 1;
                      foreach($nama as $row):
                      ?>
                      <tr>
                        <td><?=$no++;?></td>
                        <td><?=$row['nama_dosen'];?></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                      </tr>
                      <?php endforeach; ?>
                  </tbody>
                </table>
                <div class="pull-right">
                  <h4><span>Total Biaya :</span> Rp. 0,-</h4>
                  <br>
                  <a class="btn btn-primary btn-large pull-right" href="">Hitung Semua</a>
                </div>
              </div>
            </div>
          </div>

        
        </div>
      </div>
    </div>
</div>

<script>   
    $('#notifications').slideDown('slow').delay(3000).slideUp('slow');
</script>