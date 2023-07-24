package controller;

import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kic.mskim.MskimRequestMapping;
import kic.mskim.RequestMapping;

@WebServlet(urlPatterns = {"/mainpg/*"},
initParams= {@WebInitParam(name="view",value="/view/mainpg/"),//jsp위치
		@WebInitParam(name="login",value="login")})  //패키지명
public class mainController extends MskimRequestMapping{
	
	
	@RequestMapping("main")
	public String main(HttpServletRequest request,
			HttpServletResponse response) {
		
		
		return  "main";
	}
}