<?php

//error_reporting(E_ALL);
//ini_set('display_errors', 1);

define('__ROOT__', dirname(dirname(__FILE__)));
require_once(__ROOT__.'/config/db.php');

$stmt = $conn->prepare("SELECT * FROM categories");
$stmt->execute();

$results = $stmt->fetchAll(PDO::FETCH_ASSOC);
foreach ($results as &$result)
{
    $result['name'] = ucfirst($result['name']);
}

echo json_encode($results);

$conn = null;
