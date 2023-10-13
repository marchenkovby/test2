<?php

declare(strict_types=1);

namespace App\Controllers;

use App\View;
use PDO;

class HomeController
{
    /*
    public function index(): string
    {
        //return (new View('index'))->render();
        return View::make('index')->render();
    }
    */

    public function index(): View
    {
        try {
            $db = new PDO('mysql:host=db;dbname=my_db', 'root', 'root', [

            ]);

            $query = 'SELECT * FROM users';

            $stmt = $db->query($query);

            echo '<pre>';
            var_dump($stmt->fetchAll());
            echo '</pre>';

        } catch(\PDOException $e) {
            throw new \PDOException($e->getMessage(), $e->getCode());
        }

        var_dump($db);
        return View::make('index');
    }

    public function test(): View
    {
        return View::make('test', ['foo' => 'bar']);
    }

    public function upload()
    {
        echo '<pre>';
        var_dump($_FILES);
        echo '</pre>';

        $filePath = STORAGE_PATH . '/' . $_FILES['receipt']['name'];

        move_uploaded_file(
            $_FILES['receipt']['tmp_name'],
            $filePath
        );

        echo '<pre>';
        var_dump(pathinfo($filePath));
        echo '</pre>';
    }

}