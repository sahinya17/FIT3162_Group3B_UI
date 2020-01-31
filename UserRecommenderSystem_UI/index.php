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
    <!-- Style.css -->
    <link rel="stylesheet" href="css/style.css">

    <title>Dedicated Marketing</title>
</head>
<body>
<div class="container">
    <div class="card card-login mx-auto text-center">
        <div class="card-header mx-auto">
            <span> <img src="images/logo.jpeg" class="w-75" alt="Logo"> </span><br/>
        </div>
        <div class="card-body">
            <form action="clients.php" method="get">
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Category</label>
                    <div class="col-sm-8">
                        <select name="category" id="category" class="form-control" required>
                            <option value="">--select--</option>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Brand</label>
                    <div class="col-sm-8">
                        <select name="brand" id="brand" class="form-control" required>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <input type="submit" value="Find" class="btn btn-warning">
                </div>

            </form>
        </div>
    </div>
</div>

<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" crossorigin="anonymous"></script>
<script>
    $(document).ready(function () {
        $.get("functions/get_categories_ajax.php", function(data, status){
            data = JSON.parse(data);
            data.forEach(function (item, index) {
                $('#category').append(new Option(item.name, item.id));
            });
        });
        $(document).on('change', '#category', function () {
            var id = $('#category').val();
            $.get("functions/get_brands_ajax.php?category="+id, function(data, status){
                data = JSON.parse(data);

                $('#brand').empty();
                data.forEach(function (item, index) {
                    $('#brand').append(new Option(item.name, item.id));
                });
            });
        });
    });
</script>
</body>
</html>