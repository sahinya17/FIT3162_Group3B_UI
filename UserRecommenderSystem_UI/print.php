<?php

require_once('config/db.php');

$ids = $_GET['ids'];
foreach ($ids as $key => $value)
    $ids[$key] = (int) $value;
$ids = implode(', ', $ids);

$stmt = $conn->prepare("SELECT * FROM " . $_GET['table_name'] . " WHERE id IN ($ids)");
$stmt->execute();

$results = $stmt->fetchAll(PDO::FETCH_ASSOC);

?>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <title>Dedicated Marketing</title>
    <style>
        #clients {
            border-collapse: collapse;
            width: 90%;
            margin: 0 auto;
        }
        #clients td, #clients th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }
        #clients th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
        }
    </style>
</head>
<body>
<div id="printableArea">
    <table id="clients" style="width:10%;margin: 0 auto;">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($results as $result): ?>
        <tr>
            <td><?php echo $result['id']; ?></td>
            <td><?php echo $result['name']; ?></td>
        </tr>
        <?php endforeach; ?>
        </tbody>
    </table>
</div>

<script>
    function printDiv(divName) {
        var printContents = document.getElementById(divName).innerHTML;
        var originalContents = document.body.innerHTML;

        document.body.innerHTML = printContents;

        window.print();

        document.body.innerHTML = originalContents;
    }
    printDiv('printableArea');
</script>
</body>
</html>