# == Class: newrelic::repo::yum
#
# This class adds the official YUM repo of newrelic.com
#
# === Parameters:
#
# None.
#
class newrelic::repos::yum {

    yumrepo { 'newrelic_yum_repo':
        descr         => 'NewRelic',
        baseurl       => 'http://yum.newrelic.com/pub/newrelic/el5/\$basearch',
        enabled       => 1,
        gpgcheck      => 0;
    }

}
