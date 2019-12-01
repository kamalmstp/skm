

<!DOCTYPE html>
<html lang="en">
    
<head>
        <title>Login | SKMFH</title><meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap.min.css'); ?>" />
		<link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap-responsive.min.css'); ?>" />
        <link rel="stylesheet" href="<?php echo base_url('assets/css/matrix-login.css'); ?>" />
        <link href="<?php echo base_url('assets/font-awesome/css/font-awesome.css'); ?>" rel="stylesheet" />
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>

    </head>
    <body>
        <div id="loginbox">            
            <form id="loginform" method="post" class="form-vertical" action="<?php echo site_url('login/validate_login'); ?>">
				 <div class="control-group normal_text"> <img src="<?php echo base_url('assets/img/ulm2.png'); ?>" alt="Logo" /></div>
                 <hr>   
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lg"><i class="icon-user"> </i></span><input type="text" name="username" placeholder="Username" />
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_ly"><i class="icon-lock"></i></span><input type="password" name="password" placeholder="Password" />
                        </div>
                    </div>
                <div class="form-actions">
                    <span class="pull-right"><button class="btn btn-info" type="submit"> Login</button></span>
                </div>
            </form>
        </div>
        
        <script src="<?php echo base_url('assets/js/jquery.min.js'); ?>"></script>  
        <script src="<?php echo base_url('assets/js/matrix.login.js'); ?>"></script> 
    </body>

</html>
