package global.sesoc.guestbook;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.guestbook.repository.GuestBookRepository;
import global.sesoc.guestbook.vo.GuestBook;
import global.sesoc.guestbook.vo.Member;

@Controller
public class BookController {

	@Autowired
	GuestBookRepository gbr;
	
	@Autowired
	HttpSession session;
	
	private int tot;
	private int last;
	
	private int bpp; //book per page
	private int page; //current page

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Model model) {
		bpp = (int) session.getAttribute("bpp");
		page = (int) session.getAttribute("page");
		ArrayList<GuestBook> gList = new ArrayList<>();
		gList = gbr.readList();
		tot = gbr.total();
		if (tot % bpp == 0) {
			last = tot / bpp;
		} else {
			last = tot / bpp + 1;
		}
		ArrayList<GuestBook> gbList = new ArrayList<>();
		int start = bpp * (page - 1) +1;
		int end = bpp * page;
		if (end > tot) {
			end = tot;
		}
		for (int i=start-1; i<end ;i++){
			gbList.add(gList.get(i));
		}
		session.setAttribute("end", tot-(page-1)*bpp);
		session.setAttribute("gbList", gbList);
		return "board/home";
	}
	
	@RequestMapping(value = "/mpage", method = RequestMethod.GET)
	public String mpage(Model model) {
		if (page == 1) {
			model.addAttribute("presult", 0);			
		} else {
			page = page - 1;
			session.setAttribute("page", page);
		}
		return "redirect:/home";
	}
	
	@RequestMapping(value = "/fpage", method = RequestMethod.GET)
	public String fpage() {
		page = 1;
		session.setAttribute("page", page);
		return "redirect:/home";
	}
	
	@RequestMapping(value = "/ppage", method = RequestMethod.GET)
	public String ppage(Model model) {
		if (page == last) {
			model.addAttribute("presult", 0);			
		} else {
			page = page + 1;
			session.setAttribute("page", page);
		}
		return "redirect:/home";
	}
	
	@RequestMapping(value = "/lpage", method = RequestMethod.GET)
	public String lpage() {
		page = last;
		session.setAttribute("page", page);
		return "redirect:/home";
	}
	
	@RequestMapping(value = "/setpage", method = RequestMethod.GET)
	public String setpage(int pg) {
		page = pg;
		session.setAttribute("page", page);
		return "redirect:/home";
	}
	
	@RequestMapping(value = "/readOne", method = RequestMethod.GET)
	public String readOne(int bnum, Model model) {
		model.addAttribute("gb", gbr.readOne(bnum));
		return "board/read";
	}

	@RequestMapping(value = "/writeForm", method = RequestMethod.GET)
	public String writeForm() {
		Member m = (Member) session.getAttribute("loginM");
		if (m == null) {
			return "board/writeFormG";
		}		
		return "board/writeForm";
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(GuestBook gb) {
		session.setAttribute("result",gbr.insert(gb));
		return "redirect:/home";
	}
	
	@RequestMapping(value = "/updateForm", method = RequestMethod.GET)
	public String update(int bnum, Model model) {
		model.addAttribute("gb",gbr.readOne(bnum));
		return "board/updateForm";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(GuestBook gb) {
		session.setAttribute("result",gbr.update(gb));
		return "redirect:/home";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(int bnum) {
		session.setAttribute("result",gbr.delete(bnum));
		return "redirect:/home";
	}

}
