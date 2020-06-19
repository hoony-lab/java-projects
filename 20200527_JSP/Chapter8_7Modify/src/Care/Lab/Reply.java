package Care.Lab;
public class Reply {

    // 글번호 
    private Integer no;

    // 부모번호 
    private Integer pno;

    // 깊이 
    private Integer depth;

    // 내용 
    private String contents;

    public Integer getNo() {
        return no;
    }

    public void setNo(Integer no) {
        this.no = no;
    }

    public Integer getPno() {
        return pno;
    }

    public void setPno(Integer pno) {
        this.pno = pno;
    }

    public Integer getDepth() {
        return depth;
    }

    public void setDepth(Integer depth) {
        this.depth = depth;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    // Reply 모델 복사
    public void CopyData(Reply param)
    {
        this.no = param.getNo();
        this.pno = param.getPno();
        this.depth = param.getDepth();
        this.contents = param.getContents();
    }
}