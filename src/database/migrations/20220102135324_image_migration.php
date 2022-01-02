<?php
declare(strict_types=1);

use Illuminate\Database\Schema\Blueprint;
use Src\database\migrations\Migration;

final class ImageMigration extends Migration
{
    public function up()
    {
        $users = $this->table('image');
        $users->addColumn('name', 'string', ['limit' => 255])
              ->addColumn('description', 'string', ['limit' => 255])
              ->addColumn('created', 'datetime')
              ->addColumn('updated', 'datetime', ['null' => true])
              ->create();
    }

    public function down()
    {
        $this->schema->drop('image');
    }
}
