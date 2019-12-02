<div id="content-header">
  <div id="content-header">
    <div id="breadcrumb"> <a href="" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">Tables</a> </div>
    <h1><?=$page_title;?></h1>
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
        <table class="table table-bordered table-invoice">
          <tbody>
            <tr>
              <tr>
                <?php
                 foreach ($lihat as $row):
                ?>
                <td class="width30"><?=$row['sks'];?></td>
                <td class="width30"><?=$row['semester'];?></td>

              <?php endforeach; ?>
              </tr>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>
