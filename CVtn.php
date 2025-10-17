<?php
header('Content-Type: application/json; charset=utf-8');
header('Access-Control-Allow-Origin: *');

require __DIR__ . '/../DBtn.php';

try {
    $stmt = $pdo->query("SELECT * FROM cv LIMIT 1");
    $cv = $stmt->fetch();

    if (!$cv) {
        http_response_code(404);
        echo json_encode(['error' => 'Brak danych CV']);
        exit;
    }

    echo json_encode($cv, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode(['error' => 'Błąd serwera']);
}
