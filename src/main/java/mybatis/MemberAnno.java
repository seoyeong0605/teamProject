package mybatis;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import member.Member;

public interface MemberAnno {
	
	@Insert("insert into animember values (#{email}, #{pass}, #{nicname}, "
			+ "#{birthday}, sysdate)")
	int insertMember(Member m);
	
	@Select ("select * from animember where email = #{email}")
	Member oneMember(String email);
	
	@Select ("select * from animember")
	List<Member> memberList();
}