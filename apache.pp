class web_server::apache {
 package { 'httpd':
  ensure => [installed, latest],
  }
 service { 'httpd':
  ensure => running,
  require => Package['httpd'],
 }
}
