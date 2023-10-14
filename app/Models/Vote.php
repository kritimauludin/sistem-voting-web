<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Vote extends Model
{
    protected $fillable = [
        'user_id',
        'post_id',
        'polling_id',
    ];
    use HasFactory;

    public function user(){
        return $this->hasMany(User::class, 'id', 'user_id');
    }

    public function kandidat(){
        return $this->hasMany(Kandidat::class, 'id', 'post_id');
    }

    public function polling(){
        return $this->hasMany(Polling::class, 'id', 'polling_id');
    }
}
