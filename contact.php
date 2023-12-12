<style>
#contactbg {
 background-repeat: no-repeat;
  background-attachment: fixed;
  background-image: url("images/bg.jpg");
}
</style>
<script id="cid0020000343431600876" data-cfasync="false" async src="//st.chatango.com/js/gz/emb.js" style="width: 329px;height: 356px;">{"handle":"flowercrafts","arch":"js","styles":{"a":"333399","b":100,"c":"ffffff","d":"e0e0e0","e":"ffffff","h":"ffffff","j":"606060","k":"333399","l":"339999","m":"333399","n":"FFFFFF","p":"10.53","q":"333399","r":100,"pos":"br","cv":1,"cvbg":"333399","cvw":145,"cvh":55,"sbc":"606060","surl":0,"cnrs":"0.74","ticker":1,"fwtickm":1}}</script>
<?php include 'includes/session.php'; ?>
<?php

?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<?php include 'includes/navbar.php'; ?>
	 
	  <div class="content-wrapper" id='contactbg'>
	    <div class="container">

	      <!-- Main content -->
	      <section class="content">
	        <div class="row">
	        	<div class="col-sm-9">
		           	        		<?php
	        			if(isset($_SESSION['error'])){
	        				echo "
	        					<div class='alert alert-danger'>
	        						".$_SESSION['error']."
	        					</div>
	        				";
	        				unset($_SESSION['error']);
	        			}
	        		?>
		       		 <div class="image-aboutus-banner"style="margin-top:70px">
   <div class="container">
    <div class="row">
        <div class="col-md-12">
         <h1 class="lg-text">Contact Us</h1><br>
         <p class="image-aboutus-para">
		 <i class="material-icons">&#xe551;</i>	<a href="https://api.whatsapp.com/send?phone=60194637825&text=" target="_blank" </a> 0194637825</a><br><br>
		 <i class="material-icons">&#xe0be;</i><a href="mailto:flowercrafts@gmail.com?Subject=Hello%20again" target="_top">	flowercrafts@gmail.com</a><br><br>
		 <i class="material-icons" style="font-size:24px;color:red">location_on</i>	Asia Pacific University Malaysia,
		 <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Jalan Teknologi 5, Taman Teknologi Malaysia,
		 <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 57000 Kuala Lumpur, Malaysia<br> 
		 <div class="mapouter"><div class="gmap_canvas"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15936.587405033762!2d101.7004907!3d3.0553454!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x1c37182a714ba968!2sAsia%20Pacific%20University%20of%20Technology%20%26%20Innovation%20(APU)!5e0!3m2!1sen!2smy!4v1624894035802!5m2!1sen!2smy" width="600" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe><a href="https://putlocker-is.org"></a><br><style>.mapouter{position:relative;text-align:right;height:500px;width:600px;}</style><a href="https://www.embedgooglemap.net">embedding map</a><style>.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:600px;}</style></div></div>
</p>
       </div>
    </div>
</div>
</div>
	        	</div>
	        	<div class="col-sm-3">
	        		<?php include 'includes/sidebar.php'; ?>
	        	</div>
	        </div>
	      </section>
	     
	    </div>
	  </div>
  
  	<?php include 'includes/footer.php'; ?>
</div>

<?php include 'includes/scripts.php'; ?>
</body>
</html>