package software.softwareEngineering.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
@RequiredArgsConstructor
public class PlaylistController {


    @GetMapping("/playlist/{id}")
    public String playlist(@PathVariable(name = "id") Long id) {
        return "";
    }

    // 플레이리스트 추가 페이지
    @GetMapping("/playlist")
    public String addplaylistForm() {
        return "addCategory";
    }

    // 플레이리스트 추가
    @PostMapping("/playlist")

    public String addPlaylist(String category) {

        return "";
    }
}
