<?php
  $account_type = $this->session->userdata('login_type');
?>

<!DOCTYPE html>
<html lang="en">
<head>
<title>SKMFH</title>

  <?php
    include 'layout/head.php';
  ?>

</head>
<body>

<!--Header-part-->
<div id="header">
  <h1><a href="">SKMFH</a></h1>
</div>
<!--close-Header-part--> 


<!--top-Header-menu-->

<!--close-top-Header-menu-->
<!--start-top-serch-->
<div id="search" style="padding-right: 100px">
  <li class="dropdown">
    <a title="" href="#" data-toggle="dropdown" data-target="" class="dropdown-toggle" style="width: 5px">
      <i class="icon icon-user"></i>  
      <span class="text"><?php echo $this->session->userdata('name') ?></span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
        <li class="divider"></li>
        <li><a href="#"><i class="icon-check"></i> My Tasks</a></li>
        <li class="divider"></li>
        <li><a href="<?php echo site_url('login/logout') ?>"><i class="icon-key"></i> Log Out</a></li>
      </ul>
    </li>
</div>
<!--close-top-serch-->
<!--sidebar-menu-->

<?php
  include $account_type.'/navigation.php';
?>

<!--sidebar-menu-->

<!--main-container-part-->
<div id="content">
  <?php include $account_type.'/'.$page_name.'.php';?>
</div>

<!--end-main-container-part-->

<!--Footer-part-->

<div class="row-fluid">
  <div id="footer" class="span12"> 2013 &copy; Matrix Admin. Brought to you by <a href="http://themedesigner.in">Themedesigner.in</a> </div>
</div>

<!--end-Footer-part-->
  <?php
    include 'layout/footer.php';
  ?>
  
</body>
</html>
