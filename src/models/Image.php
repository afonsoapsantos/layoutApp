<?php
namespace Src\models;

use Illuminate\Database\Eloquent\Model;

class Image  extends Model
{
    protected $table = 'image';
    protected $fillable = ['name', 'description', 'imagePath'];
    protected $primaryKey = 'id';
    protected $dates = ['createdat', 'updatedat'];

    protected $perPage = 10;
}


?>