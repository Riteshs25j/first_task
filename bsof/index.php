<!--PHP code for the customers list page--> 
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Customer List</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
</head>
<body>
<style> 
body {
  background-image:linear-gradient(rgba(4,9,30,0.4),rgba(4,9,30,0.4)),url('../img/a.svg');
  background-color: #cccccc;
}
</style>
    <section class="customer-head">
        <nav>
            <div class="nav-links" id="navLinks">
                <ul>
                    <li><a href="http://127.0.0.1:5501/index.html">HOME</a></li>
                    <li><a href="http://localhost:3000/index.php">CUSTOMER LIST</a></li>
                    <li><a href="http://localhost:3000/trans.php">TRANSACTIONS</a></li>
                    <li><a href="contact.html">CONTACT US</a></li>
                </ul>
                </div>
        </nav>             
    </section>
<div>
<?php
    //Connecting to the local SQL database. If hosting online, credentials will change. Everything else remains the same.
    $username = "root";
    $password = "";
    $database = "tsf_database";
    $mysqli = new mysqli("localhost", $username, $password, $database);

    $query = "SELECT * FROM customers";

    //showing contents of 'customers' table, in tabular form.
    echo '<table> 
        <caption><b> Customer List </b></caption>
        <thead>
        <tr> 
            <th> <font face="Arial">ID</font> </th> 
            <th> <font face="Arial">Name</font> </th> 
            <th> <font face="Arial">Email</font> </th> 
            <th> <font face="Arial">Phone Number</font> </th> 
            <th> <font face="Arial">Current Balance</font> </th> 
        </tr>
        </thead>';

    echo '<tbody>';

    //fetching individual rows from the 'customer' table.
    if ($result = $mysqli->query($query)) {

        while ($row = $result->fetch_assoc()) {
            $field1name = $row["ID"];
            $field2name = $row["Name"];
            $field3name = $row["Email"];
            $field4name = $row["Phone"];
            $field5name = $row["Balance"];

            echo '<tr>';
            echo '<td>'.$field1name.'</td>';
            echo '<td>'.$field2name.'</td>';
            echo '<td>'.$field3name.'</td>';
            echo '<td>'.$field4name.'</td>';
            echo '<td>'.$field5name.'</td>';
            echo '</tr>';
        }
        echo '</tbody>';

        $result->free();
    }
    echo '</table>';
?>
</div>
<!--Transfer Money button-->
<div style="display : block; text-align : center; margin : auto auto 20px auto;">
    <a href="transfer.php" class="h-button">Transfer Money</a>
</div>
<!-- Code injected by live-server -->
<script>
	// <![CDATA[  <-- For SVG support
	if ('WebSocket' in window) {
		(function () {
			function refreshCSS() {
				var sheets = [].slice.call(document.getElementsByTagName("link"));
				var head = document.getElementsByTagName("head")[0];
				for (var i = 0; i < sheets.length; ++i) {
					var elem = sheets[i];
					var parent = elem.parentElement || head;
					parent.removeChild(elem);
					var rel = elem.rel;
					if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
						var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
						elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
					}
					parent.appendChild(elem);
				}
			}
			var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
			var address = protocol + window.location.host + window.location.pathname + '/ws';
			var socket = new WebSocket(address);
			socket.onmessage = function (msg) {
				if (msg.data == 'reload') window.location.reload();
				else if (msg.data == 'refreshcss') refreshCSS();
			};
			if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
				console.log('Live reload enabled.');
				sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
			}
		})();
	}
	else {
		console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
	}
	// ]]>
</script>
</body>
</html>