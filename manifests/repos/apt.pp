# == class mongodb::repos::apt
class newrelic::repos::apt {

    apt::source{
        'newrelic':
            location    => 'http://apt.newrelic.com/debian',
            release     => 'newrelic',
            repos       => 'non-free',
            key         => '548C16BF',
            key_server  => 'hkp://subkeys.pgp.net',
            include_src => false,
    }

}
