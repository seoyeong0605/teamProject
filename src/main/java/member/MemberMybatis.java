package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import mybatis.MemberAnno;
import mybatis.MybatisConnection;

public class MemberMybatis {
	
	private static SqlSession sqlSession = MybatisConnection.getConnection();
	
	public int insertMember(Member m) {
		
		try {
			return sqlSession.getMapper(MemberAnno.class).insertMember(m);
	    
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.commit();
			} return 0;
	}
	   
	public Member oneMember(String email) {
		return sqlSession.getMapper(MemberAnno.class).oneMember(email);
	}
	
	public List<Member> memberList() {
		return sqlSession.getMapper(MemberAnno.class).memberList();
	}
}
