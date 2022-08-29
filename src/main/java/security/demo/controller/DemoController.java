package security.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {

	@GetMapping("/")
	public String showHome() {
		
		return "home";
	}
	
	//add request mappping for /leaders
	@GetMapping("/leaders")
	public String showLeaders() {
		
		return "leaders";
	}
	
	//add request mappping for /systems
	@GetMapping("/systems")
	public String showASystems() {
		
		return "systems";
	}
	
	
}
