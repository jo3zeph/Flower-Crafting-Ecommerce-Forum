## Setup
MySQL port number not default 3306
1. Add the following code to file directory "includes/conn.php" at line 5:
``` private $server = "mysql:host=localhost:330*;dbname=flower"; ```
2. Fetch error still persists, change port number 330* to your specific one eg. 3308
