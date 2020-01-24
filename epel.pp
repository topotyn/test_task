class web_server::epel{ # создание класса в нутри модуля
 package { 'epel-release': # указываю что мне нужно установить пакет epel-release
  ensure => installed,
  }
}
