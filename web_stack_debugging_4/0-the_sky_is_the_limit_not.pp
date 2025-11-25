# Puppet manifest to increase Nginx file descriptor limits to handle high traffic

exec { 'fix--for-nginx':
  command => '/bin/sed -i "s/15/4096/" /etc/default/nginx && /usr/sbin/service nginx restart',
  path    => ['/usr/bin', '/bin', '/usr/sbin'],
}
