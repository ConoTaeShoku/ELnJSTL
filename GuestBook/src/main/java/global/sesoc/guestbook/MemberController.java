package global.sesoc.guestbook;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.guestbook.repository.MemberRepository;
import global.sesoc.guestbook.vo.Member;

@Controller
public class MemberController {

	@Autowired
	MemberRepository mr;

	@Autowired
	HttpSession session;

	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join() {
		return "member/join";
	}

	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(Member member) {
		int r = mr.join(member);
		session.setAttribute("mresult", r);
		return "redirect:/";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "member/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(String id, String password) {
		Member m = mr.login(id, password);
		session.setAttribute("loginM", m);
		return "redirect:/";
	}

	@RequestMapping(value = "/memberList", method = RequestMethod.GET)
	public String memberList() {
		session.setAttribute("mList", mr.memberList());
		return "member/memberList";
	}

	@RequestMapping(value = "/memberupdate", method = RequestMethod.GET)
	public String update() {
		Member m = (Member) session.getAttribute("loginM");
		Member mu = mr.select(m.getId());
		session.setAttribute("mu", mu);
		return "member/update";
	}

	@RequestMapping(value = "/memberupdate", method = RequestMethod.POST)
	public String update(Member member) {
		String id = member.getId();
		session.setAttribute("mresult", mr.update(member));
		session.setAttribute("loginM", mr.select(id));
		return "redirect:/";
	}

	@RequestMapping(value = "/memberdelete", method = RequestMethod.GET)
	public String delete() {
		Member m = (Member) session.getAttribute("loginM");
		session.setAttribute("mresult", mr.delete(m.getId()));
		session.removeAttribute("loginM");
		return "redirect:/";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout() {
		session.invalidate();
		return "redirect:/";
	}
}
