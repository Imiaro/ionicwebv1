<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<%@page import="com.mongodb.client.FindIterable"%>
<%@page import="org.bson.Document"%>
<%@page import="com.mongodb.DBObject"%>
<%@page import="com.mongodb.DBCursor"%>
<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="com.mongodb.DBCollection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="connexion.User"%>
<%@page import="com.mongodb.DB"%>
<%@page import="connexion.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html class="no-js">
<!--<![endif]-->
      <!-- HEAD SECTION-->
<head>
    <meta charset="utf-8">
    <title>Plouf!</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">   
     <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <!-- MAIN STYLE SECTION-->
    <link href="assets/plugins/isotope/isotope.css" rel="stylesheet" media="screen" />
    <link href="assets/plugins/fancybox/jquery.fancybox.css" rel="stylesheet" />
    <link href="assets/plugins/IconHoverEffects-master/css/component.css" rel="stylesheet" />
    <link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/about-achivements.css" rel="stylesheet" />
    <link id="mainStyle" href="assets/css/style.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
    <!-- END MAIN STYLE SECTION-->
</head>

<!-- END HEAD SECTION-->

     <!-- BODY SECTION-->
<body>

     <!-- HEADER SECTION-->
    <div class="navbar navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="fa fa-bars mobile-bars" style=""></span>
                </button>
                <a class="navbar-brand" href="index.html" >
                    <img src="assets/img/logo3.png" alt="" /> <!-- logo here-->
                </a>
            </div>
            <div class="navbar-collapse collapse" data-scrollreveal="enter from the right 50px">
                <ul class="nav navbar-nav">
                    <li class=""><a href="#menu1">Plouf</li><!-- menu links-->
                    <li><a href="#section-menu2">Meilleur joueur</a></li>  
                    <li><a href="#section-menu3">Telecharger l'application</li>
                </ul>
            </div>

        </div>
    </div>
     <!-- END HEADER SECTION-->
	<hr/>
    <!--PAGE CONTENT--> 
    <!-- menu1 SECTION-->  

    <section id="menu1">
        <div class="container">
            <div class="row">
                <div data-scrollreveal="wait 0.5s and then ease-in-out 50px" class="col-md-6 col-md-offset-3">

                    <div class="align-center">
						<br/>
						<br/>
                        <h2 class="main-text">Plouf!</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
     <!--END menu1 SECTION-->
    
     <!-- menu2 SECTION-->
    <section id="section-menu2" class="section">
        <div class="container" data-scrollreveal='after 0.30s'>
            <div class="row">
                <div class="col-md-offset-2 col-md-8">
                    <div>
						<br/>
						<br/>
                        <h2 class="heading">Bienvenue</h2>
                        <p class="heading-text">
                            Plouf le jeu de bataille naval.
                        </p>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <section >
        <div class="container" data-scrollreveal="enter right and move 40px, over 0.8s">

			<br/>
			<br/>
			<br/>
            <div class="row">
                <div class="col-md-12">
                    <p>
                                    points!!
                                    </p>

                </div>
            </div>
			<br/>
			<br/>
			<br/>
			
        </div>
    </section>
	
     <!-- END menu2 SECTION-->
     <!-- menu3 SECTION-->
    <section id="section-menu3" class="section" >
        <div class="container" data-scrollreveal="enter top move 50px">
            <div class="row">
                <div class="col-md-offset-2 col-md-8">
                    <div>
                        <h2 class="heading">L'appli plouf en ligne!</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section >
        <div class="container" data-scrollreveal="enter right and move 40px, over 0.8s">

			<br/>
			<br/>
			<br/>
            <div class="row">
                <nav id="filter" class="col-md-12 text-center">
                </nav>
				<p>Telecharger ici!</p>
			<br/>
			<br/>
			<br/>

        </div>
    </section>
    <!--END menu3 SECTION-->
    <!-- FOOTER SECTION-->
    <section id="footer" class="section footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                </div>
                <div class="col-sm-6 align-center">
                    <div class="col-sm-12">
                        <p>Copyright &copy; Imiaro Razafindramaro / Fanilo Rafanomenzantsoa</p>
                        <p>2017 at ITU University</p>
                    </div>
                </div>
            </div>


        </div>

    </section>
     <!-- END FOOTER SECTION-->
     <!-- SCROLLUP LINK SECTION-->
    <a href="#menu1" class="scrollup"><i class="fa fa-chevron-up"></i></a>
     <!--END SCROLLUP LINK SECTION-->
    <!-- STYLE SWITCHER SECTION-->
    <div  class="panel" style="color:white">
        <div id="styledemo"  style="left: 0px;">
		<span id="theme_blue" style="background-color:#37AFFF" ></span>
		<span id="theme_green" style="background-color:#469E66" ></span>
		<span id="theme_brown" style="background-color:#E69351" ></span>
		<span id="theme_red" style="background-color:#E7484E" ></span>
            </div>
</div>
    <!-- END STYLE SWITCHER SECTION-->
    <!-- MAIN SCRIPTS SECTION-->
    <script src="assets/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/scrollReveal.js"></script>
    <script>
        window.scrollReveal = new scrollReveal(); //please put this script here to show animation at the time of scroll
    </script>
    <script src="assets/js/jquery.easing.1.3.js"></script>
    <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="assets/plugins/isotope/jquery.isotope.min.js"></script>
    <script src="assets/plugins/fancybox/jquery.fancybox.pack.js"></script>
    <script src="assets/js/jquery.localscroll-1.2.7-min.js"></script>
    <script src="assets/js/jquery.appear.js"></script>
    <script src="assets/scripts/main.js"></script>
   
     <!--END MAIN SCRIPTS SECTION-->
</body>

    <!--END  BODY SECTION-->
</html>
