package h.h.gb;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import h.h.gb.repository.MemberRepository;
import h.h.gb.vo.Member;

@Controller
public class MemberController {

	@Autowired
	MemberRepository mr;

	@Autowired
	HttpSession se;

	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join() {
		return "member/join";
	}

	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(Member member) {
		int r = mr.join(member);
		se.setAttribute("mresult", r);
		return "redirect:/";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "member/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(String id, String password) {
		Member m = mr.login(id, password);
		se.setAttribute("loginM", m);
		return "redirect:/";
	}

	@RequestMapping(value = "/memberList", method = RequestMethod.GET)
	public String memberList() {
		se.setAttribute("mList", mr.memberList());
		return "member/memberList";
	}

	@RequestMapping(value = "/memberupdate", method = RequestMethod.GET)
	public String update() {
		Member m = (Member) se.getAttribute("loginM");
		Member mu = mr.select(m.getId());
		se.setAttribute("mu", mu);
		return "member/update";
	}

	@RequestMapping(value = "/memberupdate", method = RequestMethod.POST)
	public String update(Member member) {
		String id = member.getId();
		se.setAttribute("mresult", mr.update(member));
		se.setAttribute("loginM", mr.select(id));
		return "redirect:/";
	}

	@RequestMapping(value = "/memberdelete", method = RequestMethod.GET)
	public String delete() {
		Member m = (Member) se.getAttribute("loginM");
		se.setAttribute("mresult", mr.delete(m.getId()));
		se.removeAttribute("loginM");
		return "redirect:/";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout() {
		se.invalidate();
		return "redirect:/";
	}
}
