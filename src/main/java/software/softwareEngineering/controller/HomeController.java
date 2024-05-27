package software.softwareEngineering.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
    private final PlaylistService playlistService;

    // 메인 페이지
    @GetMapping("/index")
    public String index(Authentication authentication, Model model) {
        UserDTO userDTO = (UserDTO) authentication.getPrincipal();

        User user = userService.find(userDTO);

        List<Playlist> playlist = user.getPlaylists();
        List<PlaylistDTO> playlists = playlistService.getPlaylists(playlist);

        model.addAttribute("playlist", playlists);

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

    // 비밀번호 찾기 페이지
    @GetMapping("/findPassword")
    public String findPassword() {
        return "findPassword";
    }

    // 플레이리스트 페이지
    @GetMapping("/playlistForm")
    public String playlistForm() {
        return "playlistForm";
    }

    @PostMapping("/join")
    public String join(UserDTO userDTO) {
        userService.join(userDTO);

        return "redirect:loginForm";
    }
    //카테고리 추가 페이지
    @GetMapping("/playlist")
    public String addplaylistForm() {
        return "addCategory";
    }

    //플레이리스트 10들어있는 화면
    @GetMapping("/showPlaylist")
    public String showPlaylistForm() {
        return "showPlaylist";
    }
}
