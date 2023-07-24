package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MemberDao {
   
   public Connection getConnection() {
      try {
         Class.forName("oracle.jdbc.OracleDriver");
         Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "kic", "1111");
         
         System.out.println("db ok!");
         
         return conn;
      } catch (ClassNotFoundException e) {
         e.printStackTrace();
      } catch (SQLException e) {
         e.printStackTrace();
      }
      System.out.println("db error!");
      return null;
   }
   
   public int insertMember(Member m) {
      Connection con = getConnection(); //1
      
      PreparedStatement pstmt;
      try {
         pstmt = con.prepareStatement(
            "insert into animember values (?,?,?,?, sysdate)");
         pstmt.setString(1, m.getEmail());
         pstmt.setString(2, m.getPass());
         pstmt.setString(3, m.getNicname());
         pstmt.setString(4, m.getBirthday());

         return pstmt.executeUpdate(); //3 dml시 실행
      } catch (SQLException e) {
         e.printStackTrace();
      }
      return 0;
   }
   
   public Member oneMember(String email) {
      Connection con = getConnection(); //1
      
      PreparedStatement pstmt;
      ResultSet rs = null;
      try {
         pstmt = con.prepareStatement(
            "select * from animember where email = ?");
         pstmt.setString(1, email);
         rs = pstmt.executeQuery();
         if(rs.next()) {
            Member m = new Member();
            m.setEmail(rs.getString("email"));
            m.setPass(rs.getString("pass"));
            m.setNicname(rs.getString("nicname"));
            m.setBirthday(rs.getString("birthday"));
            
            return m;
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }
      return null;
   }
   
   public int updateMember(Member m) {
	      Connection con = getConnection(); //1
	      
	      PreparedStatement pstmt;
	      String sql = "update member set pass=?, nicname=?, birthday=? where email = ?";
	      
	      try {
	         pstmt = con.prepareStatement(sql);
	         pstmt.setString(1, m.getEmail());
	         pstmt.setString(2, m.getPass());
	         pstmt.setString(3, m.getNicname());
	         pstmt.setString(4, m.getBirthday());

	         return pstmt.executeUpdate(); //3 dml시 실행
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	      return 0;
	   }
   
   public int changePass(String nicname, String newPass) {
	      Connection con = getConnection();
	      
	      PreparedStatement pstmt;
	      String sql = "update member set pass=? where nicname = ?";
	    		
	      try {
	         pstmt = con.prepareStatement(sql);
	         pstmt.setString(1, newPass);
	         pstmt.setString(2, nicname);
	         
	         return pstmt.executeUpdate();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	      return 0;
	   }
   
   public List<Member> memberList() {
         Connection con = getConnection(); //1
         
         PreparedStatement pstmt;
         ResultSet rs = null;
         List<Member> li = new ArrayList<>();
         
         try {
            pstmt = con.prepareStatement(
               "select * from animember");
            rs = pstmt.executeQuery();
            while (rs.next()) {
               Member m = new Member();
               m.setEmail(rs.getString("email"));
               m.setPass(rs.getString("pass"));
               m.setNicname(rs.getString("nicname"));
               m.setBirthday(rs.getString("birthday"));
               li.add(m);
            }
         } catch (SQLException e) {
            e.printStackTrace();
         }
         return li;
      }
}