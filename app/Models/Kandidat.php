<?php

namespace App\Models;

use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kandidat extends Model
{
    use HasFactory, Sluggable;

    protected $guarded = ['id'];
    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title_kandidat'
            ]
        ];
    }
    public function polling()
    {
        return $this->belongsTo(Polling::class);
    }
    public function vote()
    {
        return $this->belongsTo(Vote::class);
    }
    public function getRouteKeyName()
    {
        return 'slug';
    }
}
