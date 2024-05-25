package software.softwareEngineering.controller;

import java.util.ArrayList;
import java.util.List;
import lombok.RequiredArgsConstructor;
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
import software.softwareEngineering.entitiy.User;
import software.softwareEngineering.repository.UserRepository;
import software.softwareEngineering.service.UserService;

@Controller
@RequiredArgsConstructor
public class HomeController {

    private final UserService userService;

    // 메인 페이지
    @GetMapping("/index")
    public ModelAndView index(Authentication authentication, ModelAndView mv) {
        User user = (User) authentication.getPrincipal();
        List<Playlist> playlists = user.getPlaylists();



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

    @GetMapping("/playlist")
    public String addplaylistForm() {
        return "addCategory";
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
