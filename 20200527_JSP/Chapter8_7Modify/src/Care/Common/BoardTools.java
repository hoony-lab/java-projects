package Care.Common;

import java.util.List;

public class BoardTools {
	public static String getNavi(int currentPage, int pageBlock, int totalPage, String url) {
		int blockCnt = totalPage/pageBlock;
		if(totalPage%pageBlock>0) blockCnt++;
		String result="";
		if(currentPage!=1)	result+="<a href='"+url+(currentPage-1)+"'> [����] </a>";
		for(int i=1;i<=blockCnt;i++) {
			if(currentPage==i)	result+="<b>";
			result+="<a href='"+url+i+"'> "+ i +" </a>";
			if(currentPage==i)	result+="</b>";
		}
		if(currentPage!=blockCnt) 	result+="<a href='"+url+(currentPage+1)+"'> [����] </a>";
		return result;
	}
	public static String getSearchWord(List<String> lst, String scriptFuncName) {
		String tag = "<select name='searchSelect'>";
		
		for(String opt:lst)
			tag += "<option>"+opt+"</option>";

		tag += "</select>";
		tag += "<input type=text name='search'/>";
		tag += "<input type=button onclick="+scriptFuncName+
				" name='searchBtn' value='�˻�' style='width: 80px; '/>";
		
		return tag;
	}
}









