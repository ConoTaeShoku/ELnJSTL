package global.sesoc.guestbook.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import global.sesoc.guestbook.vo.Member;

public interface MemberDAO {
	
	public Member login(@Param("id") String id, @Param("password") String password) throws Exception;
	
	public List<Member> memberList() throws Exception;
	
	public Member select(String id) throws Exception;
	
	public int join(Member member) throws Exception;
	
	public int update(Member member) throws Exception;
	
	public int delete(String id) throws Exception;

}


