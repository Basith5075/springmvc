package springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springmvc.model.User;
import springmvc.service.UserService;

import javax.servlet.http.HttpServletRequest;

@Controller
public class ContactController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/")
	public String indexPage() {
	
		return "index";
	}
	
	@ModelAttribute
	public void commonDataForModel(Model m) {
		m.addAttribute("Header", "Welcome to Basith Consulting..");
		m.addAttribute("tagLine", "Working faster than rest ...");
		System.out.println("setting the model data here");
	}
	
	@RequestMapping("/contact")
	public String contact(Model model) {
		
//		model.addAttribute("Header", "Welcome to Basith Consulting..");
//		model.addAttribute("tagLine", "Making work faster than rest ...");
		
		return "contact";

	}

	// Using @ModelAttribute
	// 1. To set the receiving data from the form to the Model user
	// 2. To send the model object to the processed view

	@RequestMapping(path = "/processData", method = RequestMethod.POST)
	public String processContact(@ModelAttribute User user, Model model) {
		
//		model.addAttribute("Header", "Welcome to Basith Consulting..");
//		model.addAttribute("tagLine", "Making work faster than rest ...");
		
		if(user.getUserName().isBlank()){
			
			return "redirect:contact";
		}
		userService.createUser(user);
		System.out.println(user);
		return "success";
	}


	/* Example using @RequestParam annotation for receiving form data, setting it in
	 a Model class, and sending it back to the resolved view
	
	*/
	
	/*
	 * 
	 * @RequestMapping(path="/processData", method = RequestMethod.POST) public
	 * String processContact(@RequestParam("name") String name,
	 * 
	 * @RequestParam("email") String email,
	 * 
	 * @RequestParam("password") String password, Model model ) {
	 * 
	 * User user = new User();
	 * 
	 * user.setUserName(name); user.setUserEmail(email);
	 * user.setUserPassword(password); model.addAttribute("user", user);
	 * System.out.println(user); return "success"; }
	 */
	
	
}
