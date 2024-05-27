package software.softwareEngineering.controller;

import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import software.softwareEngineering.dto.UserDTO;
import software.softwareEngineering.entitiy.Song;
import software.softwareEngineering.entitiy.User;
import software.softwareEngineering.repository.SongRepository;
import software.softwareEngineering.service.PlaylistService;
import software.softwareEngineering.service.SongService;
import software.softwareEngineering.service.UserService;

@Controller
@RequestMapping("/user")
@RequiredArgsConstructor
public class PlaylistController {
    private final SongService songService;
    private final PlaylistService playlistService;
    private final UserService userService;

    @GetMapping("/playlist/{id}")
    public String playlist(@PathVariable(name = "id") Long id) {
        return "";
    }

    // 플레이리스트 추가 페이지
    @GetMapping("/playlist")
    public String addplaylistForm(Authentication authentication) {
        return "addCategory";
    }

    // 플레이리스트 추가
    @PostMapping("/playlist")
    public String addPlaylist(String category, Authentication authentication) {
        UserDTO userDTO = (UserDTO) authentication.getPrincipal();

        User user = userService.find(userDTO);
        List<Song> songList = songService.makeSongList(category);
        playlistService.makePlaylist(songList, user);

        return "redirect:playlist";
    }
}
