package Care.Lab;

public class Board {

    private Integer no;
    private String id;
    private String title;
    private String content;
    private String writedate;

    public Integer getNo() {
        return no;
    }

    public void setNo(Integer no) {
        this.no = no;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getWritedate() {
        return writedate;
    }

    public void setWritedate(String writedate) {
        this.writedate = writedate;
    }


    // Board ¸ðµ¨ º¹»ç
    public void CopyData(Board param)
    {
        this.no = param.getNo();
        this.id = param.getId();
        this.title = param.getTitle();
        this.content = param.getContent();
        this.writedate = param.getWritedate();
    }
}
