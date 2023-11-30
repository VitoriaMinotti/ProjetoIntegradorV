package app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ErrorController {
    
    @GetMapping("/error")
    public String erro(Model model) {
    	model.addAttribute("texto", "Erro Padrão!");
        return "error";
    } 	
}