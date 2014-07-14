package monothil

/**
 * A message is in an issue.
 */
class Message {
    String name
    String text
    Date dateCreated

    static constraints = {
        name blank: false
        text blank: false
        dateCreated()
    }
}
