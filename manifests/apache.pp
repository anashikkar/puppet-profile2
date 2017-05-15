class profile::apache(
  Boolean $default_vhost = false,
  Hash $apache_vhost_servers,
  #Integer $port = 80,
  #String $docroot = '/var/www/html'
){
  class {'::apache':
    default_vhost =>$defaut_vhost,
  }
 create_resources(::apache::vhost,$apache_vhost_servers)
 # ::apache::vhost{ 'sniperlok4.mylabserver.com':
 #  port => $port,
 #  docroot => $docroot,
 # }
  
}
