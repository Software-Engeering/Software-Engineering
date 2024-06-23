package software.softwareEngineering.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import software.softwareEngineering.dto.PlaylistDTO;
import software.softwareEngineering.dto.UserDTO;
import software.softwareEngineering.entitiy.Playlist;
import software.softwareEngineering.entitiy.Song;
import software.softwareEngineering.entitiy.User;
import software.softwareEngineering.repository.SongRepository;
import software.softwareEngineering.repository.UserRepository;
import software.softwareEngineering.service.PlaylistService;
import software.softwareEngineering.service.SongService;
import software.softwareEngineering.service.UserService;

@Controller
@RequiredArgsConstructor
@Log4j2
public class HomeController {

    private final UserService userService;

   /* // 메인 페이지
    @GetMapping("/index")
    public String index(Model model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        UserDTO userDTO = (UserDTO) authentication.getPrincipal();

        User user = userService.find(userDTO);

        List<Playlist> playlist = user.getPlaylists();
        List<PlaylistDTO> playlists = playlistService.getPlaylists(playlist);

        model.addAttribute("playlist", playlists);

        return "index";
    }*/

    //default (로그인 여부)
    @GetMapping("/")
    public ModelAndView home(Authentication authentication) {
        if (authentication != null && authentication.isAuthenticated()) {
            return new ModelAndView("redirect:/user/playlistForm");
        } else {
            return new ModelAndView("redirect:/user/loginForm");
        }
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

    // 비밀번호 찾기 페이지
    @GetMapping("/findPassword")
    public String findPasswordForm() {
        return "findPassword";
    }

    @PostMapping("/findPassword")
    public @ResponseBody String findPassword(@RequestParam String account, @RequestParam String email) {
        return userService.findPassword(account, email);
    }

    @PostMapping("/join")
    public String join(UserDTO userDTO) {
        userService.join(userDTO);

        return "redirect:loginForm";
    }
}
