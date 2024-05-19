package software.softwareEngineering.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import software.softwareEngineering.dto.UserDTO;
import software.softwareEngineering.entitiy.User;
import software.softwareEngineering.repository.UserRepository;

@Controller
@RequiredArgsConstructor
public class testController {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    @GetMapping("/index")
    public String index() {
        return "index";
    }

    @GetMapping("/loginForm")
    public String loginForm() {
        return "loginForm";
    }

    @GetMapping("/joinForm")
    public String joinForm() {
        return "joinForm";
    }

    @PostMapping("/join")
    public String join(UserDTO userDTO) {
        System.out.println("userDTO = " + userDTO);

        User user = User.builder()
            .account(userDTO.getAccount())
            .password(passwordEncoder.encode(userDTO.getPassword()))
            .email(userDTO.getEmail())
            .build();

        userRepository.save(user); // 회원가입 잘됨. 비밀번호:1234 => 시큐리티로 로그인을 할 수 없음. 이유는 패스워드가 암호화가 안되었기 때문
        return "redirect:loginForm";
    }

    @GetMapping("/user/aa")
    @ResponseBody
    public UserDTO user(Authentication authentication) {
        UserDTO userDTO = (UserDTO) authentication.getPrincipal();
        System.out.println(userDTO.getAccount());
        return userDTO;
    }
}
