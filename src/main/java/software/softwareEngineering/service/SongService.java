package software.softwareEngineering.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import software.softwareEngineering.dto.SongDTO;
import software.softwareEngineering.entitiy.Playlist;
import software.softwareEngineering.entitiy.Song;
import software.softwareEngineering.repository.PlaylistRepository;
import software.softwareEngineering.repository.SongRepository;

@Service
@RequiredArgsConstructor
public class SongService {

    private final SongRepository songRepository;
    private final PlaylistRepository playlistRepository;

    public List<Song> makeSongList(String category) {

        List<Song> songList = new ArrayList<>();
        Pageable pageable = PageRequest.of(0, 10);

        switch (category) {
            case "exercise":
                songList = songRepository.getExercise(pageable);
                break;
            case "drive":
                songList = songRepository.getDrive(pageable);
                break;
            case "study":
                songList = songRepository.getStudy(pageable);
                break;
            case "fun":
                songList = songRepository.getFun(pageable);
                break;
            case "midnight":
                songList = songRepository.getMidnight(pageable);
                break;
            case "rain":
                songList = songRepository.getRain(pageable);
                break;
        }
        return songList;
    }

    public List<SongDTO> getSongList(Long id) {
        Playlist playlist = playlistRepository.findById(id).get();
        List<Song> songs = playlist.getSongs();

        List<SongDTO> songDTOList = new ArrayList<>();

        for (Song song : songs) {
            SongDTO songDTO = SongDTO.builder()
                .title(song.getTrack_name())
                .artist(song.getArtist_name())
                .date(song.getReleased_data())
                .time("3")
                .build();

            songDTOList.add(songDTO);
        }

        return songDTOList;
    }

    @Transactional
    public void deleteSongsByPlaylistId(Long playlistId) {
        songRepository.deleteByPlaylistId(playlistId);
    }

    public List<Map<String,Object>> getAllSongs() {

        List<Map<String,Object>> resultList = songRepository.getAllSongs();
        //여기다 작업하면 될듯
        return resultList;
    }
}
