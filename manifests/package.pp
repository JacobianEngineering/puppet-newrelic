class newrelic::package {
    
    $repo_class = $::osfamily ? {
        debian => newrelic::repos::apt,
        redhat => newrelic::repos::yum, 
    }

    package { "newrelic-sysmond":
        ensure  => latest,
        notify  => Class["newrelic::server"],
        require => Class[$repo_class];
    }
}
