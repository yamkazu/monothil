package monothil

/**
 * A message is in an issue.
 */
class Message {
    String name
    String text
    Date dateCreated

    static constraints = {
        name blank: false, maxSize: 100
        text blank: false, maxSize: 5000
        dateCreated()
    }
}
