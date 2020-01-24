node 'client1.pup.com' {
 include web_server::epel
 include web_server::nginx
}

node 'client2.pup.com' {
 include web_server::apache
}
