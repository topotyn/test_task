class web_server::epel{
 package { 'epel-release':
  ensure => installed,
  }
}
