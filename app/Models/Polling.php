<?php

namespace App\Models;

use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Polling extends Model
{
    use HasFactory, Sluggable;

    protected $guarded = ['id'];

    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title_polling'
            ]
        ];
    }
    public function scopeFilter($query, array $filters)
    {
        $query->when($filters['search'] ?? false, function ($query, $search) {
            return $query->where('title_polling', 'like', '%' . $search . '%')
                ->orWhere('excerpt_polling', 'like', '%' . $search . '%');
        });
    }
    public function kandidat()
    {
        return $this->hasMany(kandidat::class);
    }
    public function author()
    {
        return $this->belongsTo(User::class);
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
