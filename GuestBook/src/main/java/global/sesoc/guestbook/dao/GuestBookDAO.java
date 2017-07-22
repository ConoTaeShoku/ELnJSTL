package global.sesoc.guestbook.dao;

import java.util.List;

import global.sesoc.guestbook.vo.GuestBook;

public interface GuestBookDAO {

	public GuestBook readOne(int bnum) throws Exception;

	public List<GuestBook> readList() throws Exception;
	
	public int total() throws Exception;

	public int insert(GuestBook gb) throws Exception;

	public int update(GuestBook gb) throws Exception;

	public int delete(int bnum) throws Exception;
}
