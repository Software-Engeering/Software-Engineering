package software.softwareEngineering.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import software.softwareEngineering.dto.UserDTO;
import software.softwareEngineering.entitiy.User;
import software.softwareEngineering.repository.UserRepository;

@Controller
@RequestMapping("/user")
@RequiredArgsConstructor
public class UserController {

    // 프로필 편집 페이지
    @GetMapping("/profile")
    public String addprofileForm() {
        return "";
    }

    // 프로필 편집
    @PostMapping("/profile")
    public String addprofile() {
        return "";
    }
}
