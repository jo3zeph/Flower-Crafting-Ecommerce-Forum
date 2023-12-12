<?php
	include 'includes/session.php';

	if(isset($_POST['statusClick'])){
		$id = $_POST['id'];
		
		$conn = $pdo->open();

		try{
			$stmt = $conn->prepare("UPDATE  sales  SET sales_status='Collected' WHERE id=:id");
			$stmt->execute(['id'=>$id]);

			$_SESSION['success'] = 'Order Collected Successfully';
		}
		catch(PDOException $e){ 
			$_SESSION['error'] = $e->getMessage();
		}

		$pdo->close();
	}
	else{
		$_SESSION['error'] = 'Select order to collect first';
	}

	header('location: sales.php'); 
	
?>