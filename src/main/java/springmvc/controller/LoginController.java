package springmvc.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/abc")
public class LoginController {
	
	@RequestMapping("/login")
	public String login(Model model) {
		
		System.out.println("mapping to Login.jsp");
		
		model.addAttribute("name", "Abdul Basith Mohammed");
		
		model.addAttribute("id", 5075);
		
		List<String> friends = new ArrayList<String>();
		
		friends.add("Shoaib");
		friends.add("Abdul Khalid");
		friends.add("Mansoor");
		friends.add("Zuber");
		
		model.addAttribute("friends",friends);
		
		
		return "Login";
	}
	
	@RequestMapping("/about")
	public ModelAndView help() {
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("name", "John Talburt");
		
		modelAndView.addObject("rollNumber", 51475);
		
		Date date = new Date();
		
		modelAndView.addObject("date", date);
		
		modelAndView.setViewName("about");
		
		return modelAndView;
	}
	
	@RequestMapping("/")
	public String index() {
		
		System.out.println("mapping to Login.jsp");
		return "index";
	}
}
