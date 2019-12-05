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
                        <td>
                            <div class="pull-left">
                                <a class="btn btn-default btn-normal pull-left" href="<?=site_url('admin/dosen')?>">Kembali</a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                      <td><h4><?=$nama_dosen;?></h4></td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
            <hr>
            <div class="row-fluid">
              <div class="span12">
                <table class="table table-bordered table-invoice-full">
                  <thead>
                    <tr>
                      <th class="head0">No</th>
                      <th class="head1">Mata Kuliah</th>
                      <th class="head0 right">SKS</th>
                      <th class="head1 right">Prodi</th>
                      <th class="head0 right">Semester</th>
                      <th class="head0 right">Kelas</th>
                      <!-- <th class="head0 right">Jml Tim Dosen</th> -->
                      <th class="head0 right">Jml Pertemuan</th>
                      <th class="head0 right">Jml SKS</th>
                      <th class="head0 right">Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                      <?php $no = 1;
                      foreach($dosen as $row):
                        $get = $this->db->get_where('kelebihan', array('jadwal_id' => $row['id']));
                        $data = $get->row();
                        if ($get->num_rows() > 0) {
                            $jml_p = $data->jml_pertemuan;
                            $jml_s = $data->jml_sks;
                            $btn_klbhn = "<a id='add-event' data-toggle='modal' href='#edit-kelebihan".$row['id']."'><span class='badge badge-warning'>Ubah</span></a>";
                        }else {
                            $jml_p = 0;
                            $jml_s = 0;
                            $btn_klbhn = "<a id='add-event' data-toggle='modal' href='#add-kelebihan".$row['id']."'><span class='badge badge-warning'>Tambah</span></a>";
                        }
                      ?>
                      <tr>
                        <td><?=$no++;?></td>
                        <td><?=$row['nama_matkul'];?></td>
                        <td><?=$row['sks'];?></td>
                        <td><?=$row['prodi'];?></td>
                        <td><?=$row['semester'];?></td>
                        <td><?=$row['kelas'];?></td>
                        <!-- <td></td> -->
                        <td><?=$jml_p;?></td>
                        <td><?=$jml_s;?></td>
                        <td><?=$btn_klbhn;?></td>
                      </tr>
                      <?php endforeach; ?>
                      <tr>
                        <td colspan="6"><strong>JUMLAH</strong></td>
                        <td><strong><?=$total_p;?></strong></td>
                        <td><strong><?=$total_s;?></strong></td>
                        <td></td>
                      </tr>
                  </tbody>
                </table>
                <table class="table table-bordered table-invoice-full">
                  <tbody>
                    <tr>
                      <td class="msg-invoice" width="70%">
                        <div class="span6">
                          <div class="pull-left">
                          <h4>Honor Per SKS</h4>
                          <h4>SKS Maksimum</h4>
                          </div>
                          <div class="pull-right">
                          <h4>: <a>Rp. <?=$honor;?>,-</a></h4>
                          <h4>: <a> <?=$sks_max;?></a></h4>
                          </div>                          
                        </div>
                        <div class="span3">
                          <br>
                          <div class="buttons">
                            <?=$btn;?>
                          </div>
                        </div>
                      </td>
                      <td class="right"><strong>Total SKS</strong> <br>
                        <strong>Total Pertemuan</strong> <br>
                        <strong>Kelebihan SKS</strong>
                      </td>
                      <td class="right"><strong><?=$total_s;?><br>
                         <?=$total_p;?> <br>
                         <?php
                          if ($sks_max > $total_s) {
                            echo '0';
                          }else {
                            echo $total_s-$sks_max;
                          }
                         ?>
                         </strong>
                      </td>
                    </tr>
                  </tbody>
                </table>
                <div class="pull-right">
                  <h4><span>Jumlah yang Dibayarkan :</span> Rp. <?php
                          if ($sks_max > $total_s) {
                            echo '0';
                          }else {
                            echo ($total_s-$sks_max)*$honor;
                          }
                         ?>,-</h4>
                  <br>
                  <a class="btn btn-primary btn-large pull-right" href="">Hitung</a>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>
    </div>
</div>

<div class="modal hide" id="add-honor">
  <form class="form-horizontal" method="post" action="<?php echo site_url('admin/simpan_honor/'.$info->id_dosen); ?>">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal">×</button>
      <h3>Tambah Data</h3>
    </div>
    <div class="modal-body">
      <div class="control-group">
        <label class="control-label">Honor Per SKS</label>
        <div class="controls">
            <div class="input-prepend"> <span class="add-on">Rp</span>
            <input name="honor_sks" type="number" placeholder="0">
            </div>
        </div>
        <label class="control-label">SKS Maksimum</label>
        <div class="controls">
            <div class="input-prepend"><span class="add-on"></span>
              <input name="sks_max" type="number" placeholder="0">
            </div>
        </div>
      </div>
    </div>
    <div class="modal-footer">
        <a href="#" class="btn" data-dismiss="modal">Cancel</a>
        <button id="add-honor" type="submit" class="btn btn-primary">Simpan</button>
    </div>
  </form>
</div>

<div class="modal hide" id="edit-honor">
  <form class="form-horizontal" method="post" action="<?php echo site_url('admin/update_honor/'.$info->id_dosen); ?>">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">×</button>
        <h3>Ubah Data</h3>
    </div>
    <div class="modal-body">
        <div class="control-group">
            <label class="control-label">Honor Per SKS</label>
            <div class="controls">
                <div class="input-prepend"> <span class="add-on">Rp</span>
                  <input name="id" type="hidden" value="<?=$honor_id;?>">
                  <input name="honor_sks" type="text" value="<?=$honor;?>">
                </div>
            </div>
            <label class="control-label">SKS Maksimum</label>
            <div class="controls">
                <div class="input-prepend"><span class="add-on"></span>
                  <input name="sks_max" type="text" value="<?=$sks_max;?>">
                </div>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <a href="#" class="btn" data-dismiss="modal">Cancel</a>
        <button id="add-honor" type="submit" class="btn btn-primary">Simpan</button>
    </div>
  </form>
</div>

<?php foreach($dosen as $row){ ?>
  <div class="modal hide" id="add-kelebihan<?=$row['id'];?>">
    <form class="form-horizontal" method="post" action="<?php echo site_url('admin/simpan_data/'.$info->id_dosen); ?>">
        <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">×</button>
        <h3>Tambah Data</h3>
        </div>
        <div class="modal-body">
            <div class="control-group">
                <label class="control-label">Jumlah Pertemuan</label>
                <div class="controls">
                <input type="hidden" name="jadwal_id" value="<?=$row['id'];?>"/>
                <input type="hidden" name="sks" value="<?=$row['sks'];?>"/>
                <input type="text" name="jml_p" id="number" />
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <a href="#" class="btn" data-dismiss="modal">Cancel</a>
            <button id="add-honor" type="submit" class="btn btn-primary">Simpan</button>
        </div>
    </form>
  </div>
<?php } ?>

<?php
    foreach($dosen as $row){
      $data1 = $this->db->get_where('kelebihan', array('jadwal_id' => $row['id']))->result_array();
        foreach ($data1 as $r) {
?>
  <div class="modal hide" id="edit-kelebihan<?=$row['id'];?>">
      <form class="form-horizontal" method="post" action="<?php echo site_url('admin/update_data/'.$row['id']); ?>">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h3>Ubah Data</h3>
      </div>
      <div class="modal-body">
          <div class="control-group">
              <label class="control-label">Jumlah Pertemuan</label>
              <div class="controls">
              <input type="hidden" name="id" value="<?=$r['id'];?>"/>
              <input type="hidden" name="id_dosen" value="<?=$r['id_dosen'];?>"/>
              <input type="hidden" name="sks" value="<?=$row['sks'];?>"/>
              <input type="text" name="jml_p" id="number" value="<?=$r['jml_pertemuan'];?>"/>
              </div>
          </div>
      </div>
      <div class="modal-footer">
          <a href="#" class="btn" data-dismiss="modal">Cancel</a>
          <button id="add-honor" type="submit" class="btn btn-primary">Simpan</button>
      </div>
      </form>
  </div>
<?php }
    } 
?>

<script>   
    $('#notifications').slideDown('slow').delay(3000).slideUp('slow');
</script>