import monothil.Person
import monothil.Role

def ROLE_EXPERT = Role.findByAuthority(Role.ROLE_EXPERT)
def ROLE_ADMIN = Role.findByAuthority(Role.ROLE_ADMIN)

fixture {
    expert(Person, username: "expert", password: "1234", roles: [ROLE_EXPERT])
    admin(Person, username: "admin", password: "1234", roles: [ROLE_ADMIN])
    expertadmin(Person, username: "expertadmin", password: "1234", roles: [ROLE_EXPERT, ROLE_ADMIN])
}
