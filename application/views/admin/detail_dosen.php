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
                      <th class="head0 right">Jml Tim Dosen</th>
                      <th class="head0 right">Jml Pertemuan</th>
                      <th class="head0 right">Jml SKS</th>
                      <th class="head0 right">SKS Maximum</th>
                      <th class="head0 right">Kelebihan SKS</th>
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
                            $sks_m = $data->sks_max;
                        }else {
                            $jml_p = 0;
                            $sks_m = 0;
                        }
                      ?>
                      <tr>
                        <td><?=$no++;?></td>
                        <td><?=$row['nama_matkul'];?></td>
                        <td><?=$row['sks'];?></td>
                        <td><?=$row['prodi'];?></td>
                        <td><?=$row['semester'];?></td>
                        <td><?=$row['kelas'];?></td>
                        <td></td>
                        <td><?=$jml_p;?></td>
                        <td><?=$jml_p * $row['sks'];?></td>
                        <td><?=$sks_m;?></td>
                        <td><?=($jml_p * $row['sks']) - $sks_m;?></td>
                        <td><?=$btn_k;?></td>
                      </tr>
                      <?php endforeach; ?>
                      <!-- <tr>
                          <td colspan="6"><b>JUMLAH</b></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                      </tr> -->
                  </tbody>
                </table>
                <table class="table table-bordered table-invoice-full">
                  <tbody>
                    <tr>
                      <td class="msg-invoice" width="70%">
                          <h4>Honor Per SKS : <a>Rp. <?=$honor;?>,-</a></h4>
                          <div class="buttons">
                            <?=$btn;?>
                          </div>
                      <td class="right"><strong>Jumlah SKS</strong> <br>
                        <strong>Jumlah Pertemuan</strong> <br>
                        <strong>Jumlah Kelebihan SKS</strong>
                      </td>
                      <td class="right"><strong> 0 <br>
                         0 <br>
                         0   </strong>
                      </td>
                    </tr>
                  </tbody>
                </table>
                <div class="pull-right">
                  <h4><span>Jumlah yang Dibayarkan :</span> Rp. 0,-</h4>
                  <br>
                  <a class="btn btn-primary btn-large pull-right" href="">Hitung</a>
                </div>
              </div>
            </div>
          </div>

        <div class="modal hide" id="add-honor">
        <form class="form-horizontal" method="post" action="<?php echo site_url('admin/simpan_honor/'.$info->id); ?>">
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">×</button>
            <h3>Tambah Data</h3>
            </div>
            <div class="modal-body">
                    <div class="control-group">
                    <label class="control-label">Honor Per SKS</label>
                    <div class="controls">
                        <div class="input-prepend"> <span class="add-on">Rp</span>
                        <input name="honor_sks" type="number" placeholder="0" class="span11">
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
            <form class="form-horizontal" method="post" action="<?php echo site_url('admin/update_honor/'.$info->id); ?>">
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
                </div>
            </div>
            <div class="modal-footer">
                <a href="#" class="btn" data-dismiss="modal">Cancel</a>
                <button id="add-honor" type="submit" class="btn btn-primary">Simpan</button>
            </div>
            </form>
        </div>

        <div class="modal hide" id="add-kelebihan">
            <form class="form-horizontal" method="post" action="<?php echo site_url('admin/simpan_data/'.$info->id); ?>">
                <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">×</button>
                <h3>Tambah Data</h3>
                </div>
                <div class="modal-body">
                    <div class="control-group">
                        <label class="control-label">Jumlah Pertemuan</label>
                        <div class="controls">
                        <input type="text" name="jml_p" id="number" />
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">SKS Maksimum</label>
                        <div class="controls">
                        <input type="text" name="sks_m" id="number" />
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <a href="#" class="btn" data-dismiss="modal">Cancel</a>
                    <button id="add-honor" type="submit" class="btn btn-primary">Simpan</button>
                </div>
            </form>
        </div>

        <div class="modal hide" id="edit-kelebihan">
            <form class="form-horizontal" method="post" action="<?php echo site_url('admin/update_data/'.$info->id); ?>">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">×</button>
                <h3>Ubah Data</h3>
            </div>
            <div class="modal-body">
                <div class="control-group">
                    <label class="control-label">Jumlah Pertemuan</label>
                    <div class="controls">
                    <input type="text" name="jml_p" id="number" value=""/>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">SKS Maksimum</label>
                    <div class="controls">
                    <input type="text" name="sks_m" id="number" value=""/>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <a href="#" class="btn" data-dismiss="modal">Cancel</a>
                <button id="add-honor" type="submit" class="btn btn-primary">Simpan</button>
            </div>
            </form>
        </div>

        </div>
      </div>
    </div>
</div>

<script>   
    $('#notifications').slideDown('slow').delay(3000).slideUp('slow');
</script>