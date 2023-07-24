package controller;



import java.util.List;

import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import animal.AniGroup;
import kic.mskim.MskimRequestMapping;
import kic.mskim.RequestMapping;
import member.AnimalDao;


@WebServlet(urlPatterns = { "/animal/*" }, initParams = { @WebInitParam(name = "view", value = "/view/animal/"), // jsp
																													// 위치
		@WebInitParam(name = "login", value = "login") }) // package

public class AnimalController extends MskimRequestMapping {

	@RequestMapping("animalForm") // /member/joinForm
	public String animalForm(HttpServletRequest request, HttpServletResponse response) {
		return "animalForm";
	}
	
	
	@RequestMapping("myAnimal") // ajax
	public String myAniaml(HttpServletRequest request, HttpServletResponse response) {
		String group1 = request.getParameter("group1") ;
		AnimalDao ad = new AnimalDao();
		List<AniGroup> adlist = ad.selectGroup(group1);
		String line = "";
		
		  for (AniGroup a : adlist) {
			  line += "<option value='" + a.getGroupid() + "'>"
		       + a.getName() + "</option>"; 
			  System.out.println(a); }
		 
		request.setAttribute("line", line);
		
		
		return "myAnimal";
	}
} // end class
