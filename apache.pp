class web_server::apache {  # создание класса в модуле
 package { 'httpd': # указываю какой пакет нужно установить
  ensure => [installed, latest], # состояние пакета, установлен и последней версии
  }
 service { 'httpd':  # указываем сервис для проверки его состояния
  ensure => running,
  require => Package['httpd'], # сервис зависит от пакета httpd (первым делом выполняется package)
 }
}
