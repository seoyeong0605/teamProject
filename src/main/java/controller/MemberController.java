package controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kic.mskim.MskimRequestMapping;
import kic.mskim.RequestMapping;
import member.Member;
import member.MemberMybatis;

@WebServlet(urlPatterns = {"/member/*"},
initParams= {@WebInitParam(name="view",value="/view/member/"),//jsp위치
      @WebInitParam(name="login",value="login")})  //패키지명
public class MemberController extends MskimRequestMapping {

//HttpServlet Optional 여부 확인 필요
    @RequestMapping("login")
    public String login(HttpServletRequest request,
            HttpServletResponse response) {

        return  "login";
    }

    @RequestMapping("loginPro")
    public String loginPro(HttpServletRequest request,
            HttpServletResponse response) {

        String email = request.getParameter("email");
        String pass = request.getParameter("pass");

        MemberMybatis md = new MemberMybatis();
        Member mem = md.oneMember(email);
        String msg = "";
        String url = "";
        if (mem == null) {
            msg = "아이디를 확인 하세요";
            url = "member/login";
        } else {
            if (pass.equals(mem.getPass())) {  //login ok
               request.getSession().setAttribute("email", email);
               msg = mem.getNicname() + "님이 로그인 하셨습니다";
               url = "mainpg/main";
            } else {
               msg = "비밀번호를 확인 하세요";
               url = "member/login";
            }
            // 로그인 상태 플래그 설정
            request.setAttribute("loggedIn", true);
        	} 
        request.setAttribute("msg", msg);
        request.setAttribute("url", url);
        return "alert";
      }
          

    @RequestMapping("custom_signup")
    public String custom_signup(HttpServletRequest request,
            HttpServletResponse response) {

        return  "custom_signup";
    }

@RequestMapping("custom_signupPro")
public String custom_signupPro(HttpServletRequest request,
      HttpServletResponse response) {
   try {
      request.setCharacterEncoding("utf-8");
   } catch (UnsupportedEncodingException e) {
      e.printStackTrace();
   }
   Member mem = new Member();
   mem.setEmail(request.getParameter("email"));
   mem.setPass(request.getParameter("pass"));
   mem.setNicname(request.getParameter("nicname"));
   mem.setBirthday(request.getParameter("birthday"));

   MemberMybatis md = new MemberMybatis();
   int num = md.insertMember(mem);
   String msg = "";
   String url = "";
   if (num > 0) {
      // insert ok
      msg = mem.getEmail() + "님이 가입을 하였습니다";
      url = "member/login";
   } else {
      // insert error
      msg = "회원가입이 실패 하였습니다";
      url = "member/custom_signup";
   }
   request.setAttribute("msg", msg);
   request.setAttribute("url", url);
   return "alert";
}
}