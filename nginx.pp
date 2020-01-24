class web_server::nginx {
 package { 'nginx':
  ensure => [installed, latest],
  }
 service { 'nginx':
  ensure => true,
  require => Package['nginx'],
 }
}
