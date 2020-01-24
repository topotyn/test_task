class web_server::nginx { # создание класса в модуле
 package { 'nginx': # указываю какой пакет нужно установить
  ensure => [installed, latest], # состояние пакета, установлен и последней версии
  }
 service { 'nginx': # указываем сервис для проверки его состояния
  ensure => true,
  require => Package['nginx'], # сервис зависит от пакета nginx (первым делом выполняется package)
 }
}
