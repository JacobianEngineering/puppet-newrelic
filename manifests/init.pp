class newrelic($license  = $::newrelic_license) {
    include newrelic::package
    include newrelic::server
}
