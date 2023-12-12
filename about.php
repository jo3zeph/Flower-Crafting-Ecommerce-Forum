<style>
#loginbg {
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

	<?php include 'includes/navbar.php'; ?>
	 
	  <div class="content-wrapper"  id='loginbg'>
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
         <h1 class="lg-text">About Us</h1>
         <p class="image-aboutus-para"><b>Flower Crafts </b> is not just the <b>largest</b> and <b>most trusted</b> online flower crafting delivery company. 
		 	<br>It is now also a flower crafting sharing platform where a <b>warm community</b> of flower crafters <b>share ideas</b> and <b>explore together</b></br>
		 <h2 class="lg-text">Why Choose Us?</h2>
		 <p class="image-aboutus-para"><h4><b>Online Chat Platform</b></h4>
		 	<li>
				We strive to build a platform where users are able to engage with one another. Drop in for a <b>chat</b>, join to <b>seek help</b><br>
		or even actively <b>upload</b> your work of flower arts and get <b>endorsed</b> by the community. It is <b>Free</b>
<br><br>
		 <h4><b>Your Flower Crafting Needs</b></h4>
		 	<li>
			Whenever you need any <b>materials</b> or <b>flowers</b> for any occasion or simply for your <b>artistic desire</b><br>
			Look no further as the <b>online shop</b> sells eveything any fellow crafter needs
					</li>
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