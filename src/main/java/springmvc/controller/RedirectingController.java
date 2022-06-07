package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class RedirectingController {

	
//	@RequestMapping("/one")
//	public RedirectView one() {
//		
//		RedirectView redirectView = new RedirectView();
//		
//		System.out.println("method one ");
//		
//		redirectView.setUrl("two");
//		
//		return redirectView;
//	}
	
	@RequestMapping("/one")
	public String one() {
		
		System.out.println("method one ");
		
		return "redirect:/two";
	}

	
	@RequestMapping("/two")
	public String two() {
		
		System.out.println("method Two - redirected");
		return "";
	}

	
	
}
