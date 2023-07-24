package controller;

import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kic.mskim.MskimRequestMapping;
import kic.mskim.RequestMapping;

@WebServlet(urlPatterns = {"/health/*"},
initParams= {@WebInitParam(name="view",value="/view/health/"),//jsp위치
		@WebInitParam(name="login",value="login")})  //패키지명
public class healthController extends MskimRequestMapping{

	@RequestMapping("health_analysis")
	public String health_analysis(HttpServletRequest request,
			HttpServletResponse response) {
		
		
		return  "health_analysis";
	}
	
}