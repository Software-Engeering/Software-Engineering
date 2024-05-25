package software.softwareEngineering.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import software.softwareEngineering.repository.SongRepository;

@Service
@RequiredArgsConstructor
public class SongService {

    private final SongRepository songRepository;

    public void makeSongList(String category) {

        switch (category) {
            case "exercise":
                break;
            case "drive":
                break;
            case "study":
                break;
            case "fun":
                break;
            case "midnight":
                break;
            case "rain":
                break;
        }
    }
}
