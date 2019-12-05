
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    
    <li class="<?php if ($page_name == 'dashboard') echo 'active'; ?>"><a href="<?=base_url()?>"><i class="icon icon-home"></i> <span>Dashboard</span></a>
    </li>
    <li class="submenu <?php if ($page_name == 'daftar_dosen' || $page_name == 'honor') echo 'active';?>"> <a href="#"><i class="icon icon-file"></i> <span>Dosen</span></a>
      <ul <?php if ($page_name == 'daftar_dosen' || $page_name == 'honor') echo 'style="display: block;"';?>>
        <li class="<?php if ($page_name == 'daftar_dosen') echo 'active';?>"> <a href="<?=site_url('admin/dosen')?>">Daftar Dosen</a> </li>
        <li class="<?php if ($page_name == 'honor') echo 'active';?>"> <a href="<?=site_url('admin/honor')?>">Honor</a> </li>
      </ul>
    </li>
    
    <li class="<?php 
    if ($page_name == 'matkul') echo 'active';?>"> <a href="<?=site_url('admin/matkul')?>"><i class="icon icon-file"></i> <span>Mata Kuliah</span></a> </li>

    <li class="<?php if ($page_name == 'rekapitulasi') echo 'active'; ?>"><a href="<?=site_url('admin/rekapitulasi')?>"><i class="icon icon-home"></i> <span>Rekapitulasi</span></a>
    </li>
    
    <li><a href="<?=site_url('login/logout');?>"><i class="icon icon-home"></i> <span>Logout</span></a>
    </li>
  </ul>
</div>