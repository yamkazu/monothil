import grails.plugin.fixtures.FixtureLoader
import monothil.Role

class BootStrap {

    FixtureLoader fixtureLoader

    def init = { servletContext ->
        setupRole()

        environments {
            development {
                loadFixtures()
                watchGulpResources()
            }
        }
    }

    def destroy = {
    }

    private void setupRole() {
        Role.findOrSaveWhere(authority: Role.ROLE_ADMIN)
        Role.findOrSaveWhere(authority: Role.ROLE_EXPERT)
    }

    private void loadFixtures() {
        fixtureLoader.load("development/*")
    }

    private void watchGulpResources() {
        Thread.start {
            def process = "gulp watch".execute()
            process.consumeProcessOutput(System.out, System.err)
        }
    }
}
