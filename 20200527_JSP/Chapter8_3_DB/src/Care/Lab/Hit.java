package Care.Lab;

public class Hit {

    private Integer no;
    private Integer readno;

    public Integer getNo() {
        return no;
    }

    public void setNo(Integer no) {
        this.no = no;
    }

    public Integer getReadno() {
        return readno;
    }

    public void setReadno(Integer readno) {
        this.readno = readno;
    }

    // Hit ¸ðµ¨ º¹»ç
    public void CopyData(Hit param)
    {
        this.no = param.getNo();
        this.readno = param.getReadno();
    }
}