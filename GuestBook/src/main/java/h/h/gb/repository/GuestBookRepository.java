package h.h.gb.repository;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import h.h.gb.dao.GuestBookDAO;
import h.h.gb.vo.GuestBook;

@Repository
public class GuestBookRepository {
	
	@Autowired
	SqlSession sqlSession;
	
	public GuestBook readOne(int bnum) {
		GuestBook gb = null;
		try {
			GuestBookDAO dao = sqlSession.getMapper(GuestBookDAO.class);
			gb = dao.readOne(bnum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return gb;
		
	}

	public ArrayList<GuestBook> readList() {
		ArrayList<GuestBook> gbList = null;
		try {
			GuestBookDAO dao = sqlSession.getMapper(GuestBookDAO.class);
			gbList = (ArrayList<GuestBook>) dao.readList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return gbList;
	}
	
	public int total(){
		int result=0;
		try {
			GuestBookDAO dao = sqlSession.getMapper(GuestBookDAO.class);
			result = dao.total();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int insert(GuestBook gb) {
		int result = 0;
		try {
			GuestBookDAO dao = sqlSession.getMapper(GuestBookDAO.class);
			result = dao.insert(gb);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int update(GuestBook gb) {
		int result = 0;
		try {
			GuestBookDAO dao = sqlSession.getMapper(GuestBookDAO.class);
			result = dao.update(gb);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int delete(int bnum) {
		int result = 0;
		try {
			GuestBookDAO dao = sqlSession.getMapper(GuestBookDAO.class);
			result = dao.delete(bnum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
}
