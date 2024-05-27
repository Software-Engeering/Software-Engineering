package software.softwareEngineering.service;

import java.util.ArrayList;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import software.softwareEngineering.entitiy.Song;
import software.softwareEngineering.repository.SongRepository;

@Service
@RequiredArgsConstructor
public class SongService {

    private final SongRepository songRepository;

    public List<Song> makeSongList(String category) {

        List<Song> songList = new ArrayList<>();

        switch (category) {
            case "exercise":
                songList = songRepository.getExercise();
                break;
            case "drive":
                songList = songRepository.getDrive();
                break;
            case "study":
                songList = songRepository.getStudy();
                break;
            case "fun":
                songList = songRepository.getFun();
                break;
            case "midnight":
                songList = songRepository.getMidnight();
                break;
            case "rain":
                songList = songRepository.getRain();
                break;
        }
        return songList;
    }
}
