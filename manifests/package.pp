class newrelic::package {
    
    $repo_class = $::osfamily ? {
        debian => newrelic::repos::apt,
        redhat => newrelic::repos::yum, 
    }
   
    include $repo_class
    
    package { "newrelic-sysmond":
        ensure  => latest,
        notify  => Class["newrelic::server"],
        require => Class[$repo_class];
    }
}
