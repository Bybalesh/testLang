(function (Prism) {
	Prism.languages.puppet = {
	
# Установка пакета nginx
package { 'nginx':
  ensure => installed,
}

# Настройка службы nginx
service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => Package['nginx'],
}
