<?php

require_once('config/db.php');

$stmt = $conn->prepare("SELECT * FROM clients WHERE category_id=:category AND brand_id=:brand");
$stmt->bindParam(':category', $_GET['category']);
$stmt->bindParam(':brand', $_GET['brand']);
$stmt->execute();

$results = $stmt->fetchAll(PDO::FETCH_ASSOC);

?>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" crossorigin="anonymous">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.dataTables.min.css">
    <!-- Style.css -->
    <link rel="stylesheet" href="css/style.css">

    <title>Dedicated Marketing</title>
</head>
<body>
<div class="container">
    <br>
    <div class="card card-client mx-auto text-center">
        <div class="card-header mx-auto">
            <span> <img src="images/logo.jpeg" class="w-75" alt="Logo"> </span><br/>
        </div>
        <div class="card-body">
            <h5 style="text-align: left;"><a href="index.php">&lt; Back</a></h5>
            <form action="print.php" method="get">
                <input type="hidden" name="table_name" value="clients">
                <h5 style="text-align: right;"><button type="submit" class="btn btn-info">Print</button></h5>
                <hr>
                <a class="btn btn-primary" href="clients.php?category=<?php echo $_GET['category']; ?>&brand=<?php echo $_GET['brand']; ?>">All</a>
                <a class="btn btn-secondary" href="influencers.php?category=<?php echo $_GET['category']; ?>&brand=<?php echo $_GET['brand']; ?>">Influencers</a>
                <br><br>
                <table id="clients" class="display responsive nowrap" style="width:100%">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($results as $result): ?>
                    <tr>
                        <td><?php echo $result['id']; ?></td>
                        <td><?php echo $result['name']; ?></td>
                        <td><input type="checkbox" name="ids[]" value="<?php echo $result['id']; ?>"></td>
                    </tr>
                    <?php endforeach; ?>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
    <br>
</div>

<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" crossorigin="anonymous"></script>
<!-- DataTables JS -->
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js" crossorigin="anonymous"></script>
<script>
    $(document).ready(function () {
        $('#clients').DataTable();
    });
</script>
</body>
</html>