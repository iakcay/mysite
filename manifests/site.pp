package {'epel-release-6-8.noarch':
    provider => 'rpm',
    source => "http://ftp.linux.org.tr/epel/6/x86_64/epel-release-6-8.noarch.rpm",
    ensure=>'installed'
  }
package { 'remi-release.noarch':
    provider => 'rpm',
    source => "http://rpms.famillecollet.com/enterprise/remi-release-6.rpm",
    ensure =>'installed'
  }
package { 'atop': ensure => installed, }
  service { 'atop':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }