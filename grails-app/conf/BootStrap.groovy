import grails.plugin.fixtures.FixtureLoader
import monothil.Role

class BootStrap {

    FixtureLoader fixtureLoader

    def init = { servletContext ->
        setupRole()

        environments {
            development {
                fixtureLoader.load("development/*")
            }
        }
    }

    def destroy = {
    }

    private void setupRole() {
        Role.findOrSaveWhere(authority: Role.ROLE_ADMIN)
        Role.findOrSaveWhere(authority: Role.ROLE_EXPERT)
    }
}
