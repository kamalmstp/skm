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
                        $sql = $this->db->select('sum(jml_pertemuan) as jml_pertemuan, sum(jml_sks) as jml_sks, count(jadwal_id) as jadwal_id')->where('id_dosen', $row['id_dosen'])->get('kelebihan');
                        $sql1 = $this->db->select('sks_max, honor_sks')->where('id_dosen', $row['id_dosen'])->get('honor');
                        $sql2 = $this->db->get_where('kelebihan', array('id_dosen' => $row['id_dosen']), 1);
                        
                        if ($sql->num_rows() > 0) {
                          $data = $sql->row();
                          if ($data->jadwal_id == 0) {
                            $jp = '-';
                            $js = '-';
                            $jid = '-';
                          }else {
                            $jp = $data->jml_pertemuan;
                            $js = $data->jml_sks;
                            $jid = $data->jadwal_id;
                          }
                        }else {
                          $jp = '-';
                          $js = '-';
                          $jid = '-';
                        }

                        if ($sql1->num_rows() > 0) {
                          $data1 = $sql1->row();
                          $sm = $data1->sks_max;
                          $hs = $data1->honor_sks;
                        }else {
                          $sm = '-';
                          $hs = '-';
                        }

                        if ($sql2->num_rows() > 0) {
                          $data2 = $sql2->row();
                          $sql3 = $this->db->get_where('jadwalfh', array('id' => $data2->jadwal_id))->row();
                          $j_id = $data2->jadwal_id;
                          $p = $sql3->prodi;
                        }else {
                          $j_id = '-';
                          $p = '-';
                        }
                      ?>
                      <tr>
                        <td><?=$no++;?></td>
                        <td><?=$row['nama_dosen'];?></td>
                        <td><?=$p;?></td>
                        <td><?=$jid;?></td>
                        <td><?=$jp;?></td>
                        <td><?=$js;?></td>
                        <td><?=$sm;?></td>
                        <td><?php
                        if ($sm > $js) {
                          echo '-';
                        }elseif ($js > $sm) {
                          echo $js-$sm;
                        }else {
                          echo '-';
                        }
                        ?></td>
                        <td><?=$hs;?></td>
                        <td>
                          <?php
                          if ($sm > $js) {
                            echo '-';
                          }elseif ($js > $sm) {
                            echo ($js-$sm)*$hs;
                          }else {
                            echo '-';
                          } 
                          ?>
                        </td>
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