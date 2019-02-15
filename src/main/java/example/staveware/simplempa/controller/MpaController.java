package example.staveware.simplempa.controller;

import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import example.staveware.simplempa.dataset.Member;
import example.staveware.simplempa.service.MemberService;

@Controller // (1)
public class MpaController {
	@Autowired // (2)
	private MemberService service;

	@RequestMapping(value = "/mpa", // (3)
			method = RequestMethod.GET, // (4)
			produces = "text/html; charset=UTF-8")
	public String top() {
		return "top"; // (5)
	}

	@RequestMapping(value = "/registNew", method = RequestMethod.POST, consumes = "application/x-www-form-urlencoded; charset=UTF-8", // (6)
			produces = "text/html; charset=UTF-8") // (7)
	public String registNew(@Validated @ModelAttribute Member member, // (8)
			Model model // (9)
	) {
		service.create(member);
		model.addAttribute("memberlist", service.findAll());
		model.addAttribute("registCompleteMessage", "ìoò^Ç™äÆóπÇµÇ‹ÇµÇΩÅB ");
		return "result";
	}

	@RequestMapping(value = "/viewAll", method = RequestMethod.GET, produces = "text/html; charset=UTF-8")
	public String viewAll(Model model) {
		model.addAttribute("memberlist", service.findAll());
		return "result";
	}

	@RequestMapping(value = "/checkDuplication", method = RequestMethod.GET, consumes = "application/json; charset=UTF-8", produces = "html/plain; charset=UTF-8")
	@ResponseBody // (10)
	public String checkDuplication(@RequestParam String userid, // (11)
			HttpServletResponse response) {
		Member member = service.findOne(userid);
		String result = userid;
		if (member != null) {
			response.setStatus(HttpServletResponse.SC_CONFLICT); // (12)
		}
		return result; // (13)
	}
}
