<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Extrakulikuler extends Model
{
    protected $table = 'trx_extrakulikuler';

    public function portofolio() {
        return $this->belongsTo('App\Models\Portofolio', 'trx_id', 'trx_id');
    }
}
