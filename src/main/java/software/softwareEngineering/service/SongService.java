package software.softwareEngineering.service;

import java.lang.reflect.Field;
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

    @Transactional
    public List<SongDTO> getSongList(Long id) {
        List<Song> songs = songRepository.getSongsByPlaylistId(id);
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
    @Transactional
    public void updatePref(Long id){
        Playlist playlist = playlistRepository.findById(id).get();
        List<Song> songs = playlist.getSongs();
        Long danceability = playlist.getDanceability();
        Long valence = playlist.getValence();
        Long energy = playlist.getEnergy();
        Long acousticness = playlist.getAcousticness();
        Long instrumentainess = playlist.getInstrumentainess();
        Long liveness = playlist.getLiveness();
        Long speechiness = playlist.getSpeechiness();

        for (Song s : songs) {
            danceability += Long.valueOf(s.getDanceability());
            valence += Long.valueOf(s.getValence());
            energy += Long.valueOf(s.getEnergy());
            acousticness += Long.valueOf(s.getAcousticness());
            instrumentainess += Long.valueOf(s.getInstrumentainess());
            liveness += Long.valueOf(s.getLiveness());
            speechiness += Long.valueOf(s.getSpeechiness());
        }
        playlist.acousticness = acousticness/(songs.size()+1);
        playlist.instrumentainess = instrumentainess/(songs.size()+1);
        playlist.liveness = liveness/(songs.size()+1);
        playlist.speechiness = speechiness/(songs.size()+1);
        playlist.energy = energy/(songs.size()+1);
        playlist.valence = valence/(songs.size()+1);
        playlist.danceability = danceability/(songs.size()+1);
        prefSongs(id);
    }

    @Transactional
    public void deleteSongs(Long id) {
        List<Song> songs = songRepository.getSongsByPlaylistId(id);
        for (int i = songs.size() - 1; i >= songs.size()-10; i--) {
            songRepository.updatePointingByPlaylistId(id, songs.get(i).getId(), "n");
        }

        prefSongs((id));
    }

    public boolean checkSong(Long id, List<Map<String, Object>> pointers) {
        boolean check = true;
        if (pointers.size() < 10){
            return true;
        }
        for (Map<String, Object> pointer : pointers) {
            if (String.valueOf(pointer.get("song_id")).equals(String.valueOf(id))) {
                check = false;
            }
        }
        return check;
    }

    @Transactional
    public void prefSongs(Long id){
        Playlist playlist = playlistRepository.findById(id).get();
        Long danceability = playlist.getDanceability();
        Long valence = playlist.getValence();
        Long energy = playlist.getEnergy();
        Long acousticness = playlist.getAcousticness();
        Long instrumentainess = playlist.getInstrumentainess();
        Long liveness = playlist.getLiveness();
        Long speechiness = playlist.getSpeechiness();

        List<Song> allSongs = songRepository.getAllSongs();
        HashMap<Long, Song> map = new HashMap<>();
        List<Long> sims = new ArrayList<>();
        List<Map<String, Object>> pointers = songRepository.getPointingByPlaylistId(id);

        for (Song s: allSongs){
            if (checkSong(s.getId(), pointers)) {
                Long sim = 0L;
                sim += Math.abs(danceability - Long.valueOf(s.getDanceability()));
                sim += Math.abs(valence - Long.valueOf(s.getValence()));
                sim += Math.abs(energy - Long.valueOf(s.getEnergy()));
                sim += Math.abs(acousticness - Long.valueOf(s.getAcousticness()));
                sim += Math.abs(instrumentainess - Long.valueOf(s.getInstrumentainess()));
                sim += Math.abs(liveness - Long.valueOf(s.getLiveness()));
                sim += Math.abs(speechiness - Long.valueOf(s.getSpeechiness()));
                Collections.sort(sims);

                if (map.size() < 10) {
                    map.put(sim, s);
                    sims.add(sim);
                } else if (sim < sims.get(9)) {
                    map.remove(sims.get(9));
                    sims.remove(9);
                    sims.add(sim);
                    map.put(sim, s);
                }
            }
        }
        System.out.println("Check");
        while ((sims.size() > 10) && (map.size() > 10)){
            map.remove(sims.get(sims.size()-1));
            sims.remove(sims.size()-1);
        }

        for (Long key: map.keySet()){
            Long song_id = map.get(key).getId();
            songRepository.insertPointingByPlaylistId(id, song_id, "y");
        }

        getSongList(id);
    }
}