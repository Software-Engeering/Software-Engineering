package software.softwareEngineering.service;

import java.util.*;

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
    public List<Song> playlistSongs;
    private Long playlistID;

    public List<Song> makeSongList(String category) {

        List<Song> songList = new ArrayList<>();
        Pageable pageable = PageRequest.of(0, 10);
        List<Song> songList2 = prefSongs();

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
        playlistID = id;
        playlistSongs = songs;

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

    public List<Song> prefSongs(){
        Playlist playlist = playlistRepository.findById(playlistID).get();
        Long danceability = playlist.getDanceability();
        Long valence = playlist.getValence();
        Long energy = playlist.getEnergy();
        Long acousticness = playlist.getAcousticness();
        Long instrumentainess = playlist.getInstrumentainess();
        Long liveness = playlist.getLiveness();
        Long speechiness = playlist.getSpeechiness();

        List<Song> allSongs = songRepository.getAllSongs();
        List<Song> resultList = new ArrayList<>();
        HashMap<Long, Song> map = new HashMap<>();
        List<Song> songs = playlist.getSongs();
        List<Long> sims = new ArrayList<>();

        for (Song s: allSongs){
            Long sim = 0L;
            sim += Math.abs(danceability - Long.valueOf(s.getDanceability()));
            sim += Math.abs(valence - Long.valueOf(s.getValence()));
            sim += Math.abs(energy - Long.valueOf(s.getEnergy()));
            sim += Math.abs(acousticness - Long.valueOf(s.getAcousticness()));
            sim += Math.abs(instrumentainess - Long.valueOf(s.getInstrumentainess()));
            sim += Math.abs(liveness - Long.valueOf(s.getLiveness()));
            sim += Math.abs(speechiness - Long.valueOf(s.getSpeechiness()));
            Collections.sort(sims);

            if (resultList.size() < 10){
                map.put(sim, s);
                sims.add(sim);
            }
            else if (sim < sims.get(9)){
                map.remove(sims.get(9));
                map.put(sim, s);
            }
        }

        for (Song s : resultList){
            songs.add(s);
        }

        return resultList;
    }

//    public void getAllSongs() {
//        List<Map<String,Object>> resultList = songRepository.getAllSongs();
//    }
}
