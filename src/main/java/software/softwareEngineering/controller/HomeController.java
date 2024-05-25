package software.softwareEngineering.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import software.softwareEngineering.dto.UserDTO;
import software.softwareEngineering.entitiy.User;
import software.softwareEngineering.repository.UserRepository;
import software.softwareEngineering.service.UserService;

@Controller
@RequiredArgsConstructor
public class HomeController {

    private final UserService userService;

    // 메인 페이지
    @GetMapping("/index")
    public String index() {
        return "index";
    }

    // 로그인 페이지
    @GetMapping("/loginForm")
    public String loginForm() {
        return "loginForm";
    }

    // 회원가입 페이지
    @GetMapping("/joinForm")
    public String joinForm() {
        return "joinForm";
    }

    @GetMapping("/findPassword")
    public String findPassword() {
        return "findPassword";
    }

    @PostMapping("/join")
    public String join(UserDTO userDTO) {
        userService.join(userDTO);

        return "redirect:loginForm";
    }

    /*@GetMapping("/user/aa")
    @ResponseBody
    public UserDTO user(Authentication authentication) {
        UserDTO userDTO = (UserDTO) authentication.getPrincipal();
        System.out.println(userDTO.getAccount());
        return userDTO;
    }*/
}
