package software.softwareEngineering.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import software.softwareEngineering.dto.PlaylistDTO;
import software.softwareEngineering.dto.SongDTO;
import software.softwareEngineering.dto.UserDTO;
import software.softwareEngineering.entitiy.Playlist;
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

    // 플레이리스트 페이지
    @GetMapping("/playlistForm")
    public String playlistForm(Authentication authentication, Model model) {
        UserDTO userDTO = (UserDTO) authentication.getPrincipal();

        User user = userService.find(userDTO);

        List<Playlist> playlist = user.getPlaylists();
        List<PlaylistDTO> playlists = playlistService.getPlaylists(playlist);

        model.addAttribute("playlist", playlists);

        return "playlistForm";
    }

    @RequestMapping(value = "/getPlaylist", method = RequestMethod.POST)
    public @ResponseBody List<PlaylistDTO> getPlayList(Authentication authentication, @RequestParam Map<String, String> allParams) {
        UserDTO userDTO = (UserDTO) authentication.getPrincipal();
        User user = userService.find(userDTO);


        List<Playlist> playlist = user.getPlaylists();
        List<PlaylistDTO> playlists = playlistService.getPlaylists(playlist);

        return playlists;
    }

    // 플레이리스트에 들어있는 노래 출력 페이지
    @GetMapping("/playlist/{id}")
    public String playlist(@PathVariable(name = "id") Long id, Model model) {
        List<SongDTO> songList = songService.getSongList(id);

        model.addAttribute("songList", songList);

        return "showPlaylist";
    }

    //카테고리 추가 페이지
    @GetMapping("/playlist")
    public String addplaylistForm() {
        return "addCategory";
    }

    // 카테고리 선택 후 플레이리스트 추가
    @PostMapping("/playlist")
    public String addPlaylist(String category, Authentication authentication) {
        System.out.println(category);
        UserDTO userDTO = (UserDTO) authentication.getPrincipal();

        User user = userService.find(userDTO);
        List<Song> songList = songService.makeSongList(category);
        playlistService.makePlaylist(songList, user, category);

        return "redirect:playlistForm";
    }

    @PostMapping("/playlist/delete/{id}")
    public String deletePlaylist(@PathVariable(name = "id") Long id, Authentication authentication) {
        Playlist playlist = playlistService.findPlaylist(id);
        UserDTO userDTO = (UserDTO) authentication.getPrincipal();

        User user = userService.find(userDTO);
        user.deletePlaylist(playlist);
        playlistService.deletePlaylist(id);

        return "redirect:playlistForm";
    }
}
