node 'client1.pup.com' { # создал ноду, имя ноды совпадает и именем сертификата/hostname клиента
 include web_server::epel # подгружаю модуль
 include web_server::nginx # подгружаю модуль
}

node 'client2.pup.com' { # создал ноду для второго клиента
 include web_server::apache # подгружаю модуль
}
