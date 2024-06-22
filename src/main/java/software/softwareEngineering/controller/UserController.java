package software.softwareEngineering.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import software.softwareEngineering.dto.PlaylistDTO;
import software.softwareEngineering.dto.UserDTO;
import software.softwareEngineering.entitiy.Playlist;
import software.softwareEngineering.entitiy.User;
import software.softwareEngineering.repository.UserRepository;
import software.softwareEngineering.service.PlaylistService;
import software.softwareEngineering.service.SongService;
import software.softwareEngineering.service.UserService;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
@RequiredArgsConstructor
public class UserController {
    private final PlaylistService playlistService;
    private final UserService userService;
    private final SongService songService;
    // 프로필 편집 페이지
    @GetMapping("/profileForm")
    public String profileForm(Authentication authentication, Model model) {

        UserDTO userDTO = (UserDTO) authentication.getPrincipal();
        User user = userService.find(userDTO);

        List<Map<String,Object>> resultList = playlistService.getCategoriesByUserId(user.getId());
        List<Map<String,Object>> favoriteList = playlistService.getFavoriteArtistsByUserId(user.getId());

        model.addAttribute("user", user);
        model.addAttribute("resultList", resultList);
        model.addAttribute("favoriteList", favoriteList);
        return "profileForm";
    }

    @PostMapping("/updateAccount")
    public @ResponseBody boolean updateEmailAndPassword(Authentication authentication, @RequestParam String oldPassword, @RequestParam String newEmail, @RequestParam String newPassword, Model model) {
        UserDTO userDTO = (UserDTO) authentication.getPrincipal();
        User user = userService.find(userDTO);

        return userService.updateEmailAndPassword(user.getAccount(),oldPassword, newEmail, newPassword);
    }

}
