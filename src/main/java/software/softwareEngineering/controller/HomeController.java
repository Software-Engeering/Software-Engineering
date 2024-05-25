package software.softwareEngineering.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
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
import software.softwareEngineering.service.UserService;

@Controller
@RequiredArgsConstructor
@Log4j2
public class HomeController {

    private final UserService userService;
    private final PlaylistService playlistService;

    // 메인 페이지
    @GetMapping("/index")
    public ModelAndView index(Authentication authentication, ModelAndView mv) {
        UserDTO userDTO = (UserDTO) authentication.getPrincipal();

        User user = userService.find(userDTO);

        List<Playlist> playlist = user.getPlaylists();
        List<PlaylistDTO> playlists = playlistService.getPlaylists(playlist);

        mv.addObject("playlist", playlists);
        mv.setViewName("jsonView");

        return mv;
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


    /*@RequestMapping(
        value = {"/vac/getVacCdList"},
        method = {RequestMethod.POST}
    )
    public ModelAndView getVacCdList(LoginVO loginVo, @RequestParam Map<String, Object> params, ModelAndView mv) {
        params.put("compSeq", loginVo.getCompSeq());
        mv.addObject("list", this.vacUtil.getVacCdList(params));
        mv.setViewName("jsonView");
        return mv;
    }*/
}
