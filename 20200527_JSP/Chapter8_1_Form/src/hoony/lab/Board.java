package hoony.lab;

import java.sql.Date;

public class Board implements Comparable<Board>{

    private String id;
    private String title;
    private Date date;
    private Integer viewcnt;
    private String content;
    private Integer num;
    
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

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Integer getViewcnt() {
        return viewcnt;
    }

    public void setViewcnt(Integer viewcnt) {
        this.viewcnt = viewcnt;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    // Board ¸ðµ¨ º¹»ç
    public void CopyData(Board param)
    {
        this.id = param.getId();
        this.title = param.getTitle();
        this.date = param.getDate();
        this.viewcnt = param.getViewcnt();
        this.content = param.getContent();
        this.num = param.getNum();
    }

	@Override
	public int compareTo(Board o) {
		// TODO Auto-generated method stub
		return 0;
	}

}