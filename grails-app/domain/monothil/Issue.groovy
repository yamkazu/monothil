package monothil

/**
 * A question, an inquiry or a trouble.
 */
class Issue {
    String subject
    String description
    String issuerName
    String issuerEmail
    String assignee
    Date dueDate
    Date dateCreated
    Date lastUpdated

    static hasMany = [messages: Message]

    static constraints = {
        subject blank: false
        description blank: false
        issuerName blank: false
        issuerEmail blank: false, email: true
        assignee nullable: true, blank: false
        dueDate nullable: true
        dateCreated()
        lastUpdated()
    }
}
