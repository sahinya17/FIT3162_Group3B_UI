<?php

define('__ROOT__', dirname(dirname(__FILE__)));
require_once(__ROOT__.'/config/db.php');

$stmt = $conn->prepare("SELECT * FROM brands WHERE category_id=:category");
$stmt->bindParam(':category', $_GET['category']);
$stmt->execute();

$results = $stmt->fetchAll(PDO::FETCH_ASSOC);
foreach ($results as &$result)
{
    $result['name'] = ucfirst($result['name']);
}

echo json_encode($results);

$conn = null;
