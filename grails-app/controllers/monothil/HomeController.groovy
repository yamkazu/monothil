package monothil

import grails.plugin.springsecurity.annotation.Secured

@Secured("permitAll")
class HomeController {

    def index() {}
}
