package software.softwareEngineering.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import software.softwareEngineering.dto.SongDTO;

import java.util.List;

@Controller
public class playerController {
    @GetMapping("/playerForm")
    public String playerForm(Model model) {


        return "playerForm";
    }
}
