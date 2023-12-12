<?php include 'includes/session.php'; ?>
<?php
	$slug = $_GET['category'];

	$conn = $pdo->open();
 
	try{
		$stmt = $conn->prepare("SELECT * FROM category WHERE id = :slug");
		$stmt->execute(['slug' => $slug]);
		$cat = $stmt->fetch();
		$catid = $cat['id'];
	}
	catch(PDOException $e){
		echo "There is some problem in connection: " . $e->getMessage();
	}

	$pdo->close();

?> 
<script id="cid0020000343431600876" data-cfasync="false" async src="//st.chatango.com/js/gz/emb.js" style="width: 329px;height: 356px;">{"handle":"flowercrafts","arch":"js","styles":{"a":"333399","b":100,"c":"ffffff","d":"e0e0e0","e":"ffffff","h":"ffffff","j":"606060","k":"333399","l":"339999","m":"333399","n":"FFFFFF","p":"10.53","q":"333399","r":100,"pos":"br","cv":1,"cvbg":"333399","cvw":145,"cvh":55,"sbc":"606060","surl":0,"cnrs":"0.74","ticker":1,"fwtickm":1}}</script>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>
	 
	  <div class="content-wrapper">
	    <div class="container">

	      <!-- Main content -->
	      <section class="content">
	        <div class="row">
	        	<div class="col-sm-9">
		            <h1 class="page-header"><?php echo $cat['name']; ?></h1>
		       		<?php
		       			
		       			$conn = $pdo->open();

		       			try{
		       			 	$inc = 3;	
						    $stmt = $conn->prepare("SELECT * FROM products WHERE category_id = :catid");
						    $stmt->execute(['catid' => $catid]);
						    foreach ($stmt as $row) {
						    	$image = (!empty($row['photo'])) ? 'images/'.$row['photo'] : 'images/noimage.jpg';
						    	$inc = ($inc == 3) ? 1 : $inc + 1;
	       						if($inc == 1) echo "<div class='row'>";
	       						echo "
	       							<div class='col-sm-4'>
	       								<div class='box box-solid'>
		       								<div class='box-body prod-body'>
		       									<a href='product.php?product=".$row['slug']."'><img src='".$image."' width='100%' height='230px' class='thumbnail'></a>
		       									<h5><a href='product.php?product=".$row['slug']."'>".$row['name']."</a></h5>
														<b>RM ".number_format($row['price'], 2)."</b>
		       								</div>
		       								<div class='box-footer'>
		       							
		       								</div>
	       								</div>
	       							</div>
	       						";
	       						if($inc == 3) echo "</div>";
						    }
						    if($inc == 1) echo "<div class='col-sm-4'></div><div class='col-sm-4'></div></div>"; 
							if($inc == 2) echo "<div class='col-sm-4'></div></div>";
						}
						catch(PDOException $e){
							echo "There is some problem in connection: " . $e->getMessage();
						}

						$pdo->close();

		       		?> 
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