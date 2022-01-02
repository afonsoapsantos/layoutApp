<?php
namespace Src\models;

use Illuminate\Database\Eloquent\Model;

class Image  extends Model
{
    protected $table = 'images';
    protected $fillable = ['name', 'description', 'iamgePath'];
    protected $primaryKey = 'id';
    protected $dates = ['createdat', 'updatedat'];
}


?>