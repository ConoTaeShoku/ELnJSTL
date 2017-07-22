package global.sesoc.guestbook.repository;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.guestbook.dao.MemberDAO;
import global.sesoc.guestbook.vo.Member;

@Repository
public class MemberRepository {
	
	@Autowired
	SqlSession sqlSession;
	
	public int join(Member member) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		int result = 0;
		try {
			result = dao.join(member);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public Member login(String id, String password) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		Member m = null;
		try {
			m = dao.login(id, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return m;
		
	}

	public ArrayList<Member> memberList() {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		ArrayList<Member> mList = null;
		try {
			mList = (ArrayList<Member>) dao.memberList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mList;
	}
	
	public Member select(String id) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		Member m = null;
		try {
			m = dao.select(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return m;
	}
	
	public int update(Member member) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		int result = 0;
		try {
			result = dao.update(member);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int delete(String id) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		int result = 0;
		try {
			result = dao.delete(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
}
