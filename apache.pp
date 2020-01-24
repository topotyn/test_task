class web_server::apache {  # создание класса в модуле
 package { 'httpd': # указываю, что нужен пакет httpd
  ensure => [installed, latest], # состояние пакета, установлен и последней версии
  }
 service { 'httpd':  # проверяю что сервис httpd запущен
  ensure => running,
  require => Package['httpd'], # показываю, что сервис зависит от пакета httpd (сначало будет выполнен блок пакета)
 }
}
