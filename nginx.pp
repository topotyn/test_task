class web_server::nginx { # создаю класс внутри модуля
 package { 'nginx': # указываю какой пакет нужно установить
  ensure => [installed, latest], # указываю состояние пакета, установлен и последней версии
  }
 service { 'nginx': # указываю сервис с который нужно проверять на запуск
  ensure => true,
  require => Package['nginx'], # сервис зависит от пакета nginx
 }
}
