package model;

public class Feedback {
    private int id;
    private String username;
    private String subject;
    private String message;

    public Feedback(int id, String username, String subject, String message) {
        this.id = id;
        this.username = username;
        this.subject = subject;
        this.message = message;
    }

    public int getId() { return id; }
    public String getUsername() { return username; }
    public String getSubject() { return subject; }
    public String getMessage() { return message; }
}
