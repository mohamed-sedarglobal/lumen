<?php
namespace App;
use Illuminate\Auth\Authenticatable;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Database\Eloquent\Model;
use Laravel\Lumen\Auth\Authorizable;

class User extends Model implements AuthenticatableContract, AuthorizableContract
{
    use Authenticatable, Authorizable;
   //
   	protected $table = 'users';
  	protected $fillable = ['first_name', 'last_name', 'user_name', 'password', 'email', 'mobile_no', 'gender', 'birthday','api_key'];

   	protected $hidden = [
        'password',
    ];

    public function todo()
   {
       return $this->hasMany('App\Todo','user_id');
   }
}