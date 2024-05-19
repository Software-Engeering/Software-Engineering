package software.softwareEngineering.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class testController {

    @GetMapping("/index")
    public String index() {
        return "/index";
    }

    @GetMapping("/loginForm")
    public String loginForm() {
        return "/loginForm";
    }

    @GetMapping("/joinForm")
    public String joinForm() {
        return "joinForm";
    }

}
