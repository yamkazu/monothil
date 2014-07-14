package monothil

/**
 * Domain class for a person.
 */
class Person {

    transient springSecurityService

    String username
    String password

    final boolean enabled = true
    final boolean accountExpired = false
    final boolean accountLocked = false
    final boolean passwordExpired = false

    static hasMany = [roles: Role]

    static transients = ["springSecurityService", "enabled", "accountExpired", "accountLocked", "passwordExpired"]

    static constraints = {
        username blank: false, unique: true
        password blank: false
    }

    static mapping = {
        password column: "`password`"
    }

    Set<Role> getAuthorities() {
        roles
    }

    def beforeInsert() {
        encodePassword()
    }

    def beforeUpdate() {
        if (isDirty("password")) {
            encodePassword()
        }
    }

    protected void encodePassword() {
        password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
    }
}
