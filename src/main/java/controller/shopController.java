package controller;

import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kic.mskim.MskimRequestMapping;
import kic.mskim.RequestMapping;

@WebServlet(urlPatterns = {"/shop/*"},
initParams= {@WebInitParam(name="view",value="/view/shop/"),//jsp위치
		@WebInitParam(name="login",value="login")})  //패키지명
public class shopController extends MskimRequestMapping{
	
	@RequestMapping("order")
	public String order(HttpServletRequest request,
			HttpServletResponse response) {
		
		
		return  "order";
	}
	
	@RequestMapping("pay")
	public String pay(HttpServletRequest request,
			HttpServletResponse response) {
		
		
		return  "pay";
	}
	@RequestMapping("uuss")
	public String uuss(HttpServletRequest request,
			HttpServletResponse response) {
		
		
		return  "uuss";
	}
}


