import monothil.Role

class BootStrap {

    def init = { servletContext ->
        setupRole()
    }

    def destroy = {
    }

    private void setupRole() {
        Role.findOrSaveWhere(authority: Role.ROLE_ADMIN)
        Role.findOrSaveWhere(authority: Role.ROLE_EXPERT)
    }
}
