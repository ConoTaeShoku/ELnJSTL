package h.h.gb;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	@Autowired
	HttpSession se;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		se.setAttribute("bpp", 10);
		se.setAttribute("page",1);
		return "index";
	}

}
