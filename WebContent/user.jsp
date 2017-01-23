<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<!-- Meta and Title -->
<meta charset="utf-8">
<title>Gestion Cabinet Medecin</title>

<!-- Fonts -->
<link
	href='https://fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Poppins:400,300,500,600,700'
	rel='stylesheet' type='text/css'>

<!-- CSS - theme -->
<link rel="stylesheet" type="text/css"
	href="assets/skin/default_skin/less/theme.min.css">

<!-- CSS - allcp forms -->
<link rel="stylesheet" type="text/css"
	href="assets/allcp/forms/css/forms.css">

<!-- Favicon -->
<link rel="shortcut icon" href="assets/img/favicon.png">

<!-- Plugins -->
<link rel="stylesheet" type="text/css"
	href="assets/js/utility/malihu-custom-scrollbar-plugin-master/jquery.mCustomScrollbar.min.css">

<!-- IE8 HTML5 support -->
<!--[if lt IE 9]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
</head>
<body>

<section id="content" class="table-layout"  style="background-image:url(assets/img/2.png);background-repeat:no-repeat;height: 80%; ">

            <!-- Column Left -->
                <div class="chute-icon"></div>
              
            <!-- /Column Left -->

            <!-- Column Center -->
            <div class="chute chute-center" style="height: 357px;">
                <div class="">

                    <div class="tab-content mw900 center-block center-children" style="padding: 302px 32px 50px;">

                        <!-- Comment Form -->
                        <div class="allcp-form theme-primary tab-pane mw600" id="comment" role="tabpanel" >
                            <div class="panel">
                                <div class="panel-heading">
                                    <span class="panel-title">Leave a comment</span>
                                </div>
                                <!-- /Panel Heading -->

                                <form method="post" action="http://myadmin-html.axiomthemes.com/" id="form-comment">
                                    <div class="panel-body pn">
                                        <div class="section">
                                            <label for="names2" class="field prepend-icon">
                                                <input type="text" name="names2" id="names2" class="gui-input" placeholder="Name">
                                                <span class="field-icon">
                                                    <i class="fa fa-user"></i>
                                                </span>
                                            </label>
                                        </div>
                                        <!-- /section -->

                                        <div class="section">
                                            <label for="email2" class="field prepend-icon">
                                                <input type="email" name="email2" id="email2" class="gui-input" placeholder="Email">
                                                <span class="field-icon">
                                                    <i class="fa fa-envelope"></i>
                                                </span>
                                            </label>
                                        </div>
                                        <!-- /section -->

                              

                                    </div>
                                </form>
                                <!-- /Form -->
                            </div>
                            <!-- /Panel -->
                        </div>
                     
                        <!-- Login Form -->
                        <div class="allcp-form theme-primary tab-pane active mw320" id="login" role="tabpanel" style="margin-left: -38%;
    margin-top: -35%;">
                      
                            <div class="panel fluid-width">

                                <form method="post" id="form-login">
                                    <div class="panel-body pn mv10">

                                        <div class="section">
                                            <label for="username2" class="field prepend-icon">
                                                <input type="text" name="login" id="username2" class="gui-input" placeholder="Username">
                                                <span class="field-icon">
                                                    <i class="fa fa-user"></i>
                                                </span>
                                            </label>
                                        </div>
                                        <!-- /section -->

                                        <div class="section">
                                            <label for="password2" class="field prepend-icon">
                                                <input type="text" name="password" id="password2" class="gui-input" placeholder="Password">
                                                <span class="field-icon">
                                                    <i class="fa fa-lock"></i>
                                                </span>
                                            </label>
                                        </div>
                                        <!-- /section -->

                                        <div class="section">
                                            <div class="pull-left pt5">
                                                <div class="radio-custom radio-primary mb5 lh25">
                                          
                                                    <label for="remember">Remember me</label>
                                                </div>
                                            </div>
                                            <button type="submit" class="btn btn-bordered btn-primary pull-right" style="width: 31%;">Login
                                          
                                            </button>
                                        </div>
                                        <!-- /section -->

                                    </div>
                                    <!-- /Form -->
                                </form>
                            </div>
                            <!-- /Panel -->
                        </div>
             </div>
             </div>
             </div>

        </section>
        



</body>
</html>