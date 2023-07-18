Connection à la BD avec creation de la BD complexes_cinema

<?php

$mysqlDsn = 'mysql:host';

try 
{
    $pdo = new PDO($mysqlDsn, username:'root', password:'');
    if ($pdo->exec(statement:'CREATE DATEBASE complexes_cinema') !== false) {
        echo 'base de données créée';
    } else {
        echo 'requete Nok';
    }

} catch (PDOException $PDOException) {
    echo 'error connection';
}


