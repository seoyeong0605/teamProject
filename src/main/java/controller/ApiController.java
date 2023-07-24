package controller;

import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kic.mskim.MskimRequestMapping;
import kic.mskim.RequestMapping;

@WebServlet(urlPatterns = {"/api/*"},
initParams= {@WebInitParam(name="view",value="/view/api/"),//jsp위치
		@WebInitParam(name="login",value="login")})  //패키지명
public class ApiController extends MskimRequestMapping{
	
	

	
	@RequestMapping("maps")
	public String maps(HttpServletRequest request,
			HttpServletResponse response) {
		
		
		return  "maps";
	}
	@RequestMapping("kind")
	public String kind(HttpServletRequest request,
			HttpServletResponse response) {
		
		
		return  "kind";
	}
	@RequestMapping("calendar")
	public String calendar(HttpServletRequest request,
			HttpServletResponse response) {
		
		
		return  "calendar";
	}
	@RequestMapping("countsize")
	public String countsize(HttpServletRequest request,
			HttpServletResponse response) {
		
		
		return  "countsize";
	}
	@RequestMapping("Travel")
	public String Travel(HttpServletRequest request,
			HttpServletResponse response) {
		
		
		return  "Travel";
	}
}

