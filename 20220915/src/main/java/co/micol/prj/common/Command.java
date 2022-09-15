package co.micol.prj.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {
	// request,response 돌려받아서 실행하겠다.
	public String exec(HttpServletRequest request, HttpServletResponse response); 
	
}
