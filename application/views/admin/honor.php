<div id="content-header">
  <div id="content-header">
    <div id="breadcrumb"> <a href="" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">honor</a> </div>
    <h1>Honor</h1>
    <hr>
  </div>
</div>


<div class="container-fluid">
  <div class="row-fluid">
   <div class="span6">
      <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Input Pertemuan</h5>
        </div>
        <div class="widget-content nopadding">

          <form action="#" method="get" class="form-horizontal">
            <div class="control-group">
              <label class="control-label">Mata Kuliah :</label>
              <div class="controls">
                <select >
                  <option>First option</option>
                  <option>Second option</option>
                </select>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">SKS :</label>
              <div class="controls">
                <input type="text" placeholder="SKS Matkul" name="" disabled="" class="span11">
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Jumlah Pertemuan :</label>
              <div class="controls">
                <input type="text" class="span11" name="" placeholder="Juamlah Pertemuan" />
              </div>
            </div>

            <div class="form-actions">
              <button type="submit" class="btn btn-success"><i class="icon-plus icon-white"></i> Tambah</button>
            </div>
          </form>
        </div>
      </div>
    </div>
    <div class="span6">
      <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Data Pertemuan</h5>
        </div>
        <div class="widget-content nopadding">
            <table id="my-example" class="table table-bordered data-table">
              <thead>
                <tr>
                  <th>
                    No
                  </th>
                  <th>
                    Nama Matkul
                  </th>
                  <th>
                    Total SKS
                  </th>
                  <th>
                    Jumlah Pertemuan
                  </th>
                  <th>
                    Aksi
                  </th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                   1
                  </td>
                  <td>
                    we
                  </td>
                  <td>
                    23
                  </td>
                  <td>
                    12
                  </td>
                  <td class="taskOptions">
                    <a href="#" class="tip-top" data-original-title="Update"><i class="icon-ok"></i></a> 
                    <a href="#" class="tip-top" data-original-title="Delete"><i class="icon-remove"></i></a>
                  </td>
                </tr>
              </tbody>
             </table>
          </div>
          <div class="form-actions">

            <div class="buttons"> <a id="add-event" data-toggle="modal" href="#modal-add-event" class="btn btn-primary"><i class="icon-money"></i> TOTAL</a>
              <div class="modal hide" id="modal-add-event">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">×</button>
                  <h3>Total Honor <span class="date badge badge-important">kelebihan</span></h3>
                </div>
                <div class="modal-body">
                    <div class="span12">
                <table class="table table-bordered table-invoice">
                  <tbody>
                    <tr>
                      <tr>
                        <td class="width30">Nama Dosen </td>
                        <td class="width70"><strong>Lena contoh</strong></td>
                      </tr>
                      <tr>
                        <td class="width30">Jumalah Matkul </td>
                        <td class="width70"><strong>6</strong></td>
                      </tr>
                      <tr>
                        <td class="width30">Jumalah SKS </td>
                        <td class="width70"><strong>80</strong></td>
                      </tr>
                      <tr>
                        <td>SKS Max </td>
                        <td><strong>12</strong></td>
                      </tr>
                      <tr>
                        <td>SKS Kelebihan </td>
                        <td><strong>12</strong></td>
                      </tr>
                      <tr>
                        <td>Jumlah Pertemuan </td>
                        <td><strong>5</strong></td>
                      </tr>
                      <tr>
                        <td>Harga Per SKS </td>
                        <td><strong>Rp. 50.000,00</strong></td>
                      </tr>
                      <tr>
                        <td>Honor </td>
                        <td><strong>Rp. 300.000,00</strong></td>
                      </tr>
                    </tr>
                  </tbody>
                </table>
              </div>
                </div>
                <div class="modal-footer"> <a href="#" class="btn" data-dismiss="modal">Cancel</a> <a href="#" id="add-event-submit" class="btn btn-primary">Dwonload</a> </div>
              </div>
            </div>
          </div>
      </div>
    </div>
  </div>
</div>
