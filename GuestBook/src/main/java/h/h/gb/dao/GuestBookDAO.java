package h.h.gb.dao;

import java.util.List;

import h.h.gb.vo.GuestBook;

public interface GuestBookDAO {

	public GuestBook readOne(int bnum) throws Exception;

	public List<GuestBook> readList() throws Exception;
	
	public int total() throws Exception;

	public int insert(GuestBook gb) throws Exception;

	public int update(GuestBook gb) throws Exception;

	public int delete(int bnum) throws Exception;
}
