package monothil

/**
 * Domain class for a role.
 */
class Role {

    static final String ROLE_ADMIN = "ROLE_ADMIN"
    static final String ROLE_EXPERT = "ROLE_EXPERT"

    String authority

    static constraints = {
        authority blank: false, unique: true
    }
}
