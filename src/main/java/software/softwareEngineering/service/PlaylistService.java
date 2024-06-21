package software.softwareEngineering.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import software.softwareEngineering.dto.PlaylistDTO;
import software.softwareEngineering.entitiy.Playlist;
import software.softwareEngineering.entitiy.Song;
import software.softwareEngineering.entitiy.User;
import software.softwareEngineering.repository.PlaylistRepository;
import software.softwareEngineering.repository.UserRepository;

@Service
@RequiredArgsConstructor
public class PlaylistService {

    private final PlaylistRepository playlistRepository;
    private final UserRepository userRepository;

    public List<PlaylistDTO> getPlaylists(List<Playlist> playlists) {
        List<PlaylistDTO> playlistDTOs = new ArrayList<>();

        for (Playlist playlist : playlists) {
            PlaylistDTO playlistDTO = PlaylistDTO.builder()
                .id(playlist.getId())
                .category(playlist.getCategory())
                .title(playlist.getTitle())
                .build();

            playlistDTOs.add(playlistDTO);
        }

        return playlistDTOs;
    }

    public void makePlaylist(List<Song> songList, User user, String category) {
        Long bpm;
        String octave;
        String mode;
        Long danceability = 0L;
        Long valence = 0L;
        Long energy = 0L;
        Long acousticness = 0L;
        Long instrumentainess = 0L;
        Long liveness = 0L;
        Long speechiness = 0L;

        switch(category){
            case "exercise":
                danceability = 0L;
                valence = 0L;
                energy = 0L;
                acousticness = 0L;
                instrumentainess = 0L;
                liveness = 0L;
                speechiness = 0L;
                break;
            case "drive":
                danceability = 0L;
                valence = 0L;
                energy = 0L;
                acousticness = 0L;
                instrumentainess = 0L;
                liveness = 0L;
                speechiness = 0L;
                break;
            case "study":
                danceability = 0L;
                valence = 0L;
                energy = 0L;
                acousticness = 0L;
                instrumentainess = 0L;
                liveness = 0L;
                speechiness = 0L;
                break;
            case "fun":
                danceability = 0L;
                valence = 0L;
                energy = 0L;
                acousticness = 0L;
                instrumentainess = 0L;
                liveness = 0L;
                speechiness = 0L;
                break;
            case "midnight":
                danceability = 0L;
                valence = 0L;
                energy = 0L;
                acousticness = 0L;
                instrumentainess = 0L;
                liveness = 0L;
                speechiness = 0L;
                break;
            case "rain":
                danceability = 0L;
                valence = 0L;
                energy = 0L;
                acousticness = 0L;
                instrumentainess = 0L;
                liveness = 0L;
                speechiness = 0L;
                break;
        }
        Playlist playlist = Playlist.builder()
            .title("Playlist")
            .category(category)
            .songs(songList)
            .danceability(danceability)
            .valence(valence)
            .energy(energy)
            .acousticness(acousticness)
            .instrumentainess(instrumentainess)
            .liveness(liveness)
            .speechiness(speechiness)
            .user(user)
            .build();

        for (Song song : songList) {
            song.addPlayList(playlist);
        }

        playlistRepository.save(playlist);

        user.addPlaylist(playlist);
    }

    @Transactional
    public void deletePlaylist(Long id) {
        playlistRepository.deleteById(id);
    }

    public Playlist findPlaylist(Long id) {
        Playlist playlist = playlistRepository.findById(id).get();

        return playlist;
    }

    public List<Map<String,Object>> getCategoriesByUserId(Long id) {
        System.out.println(id);
        List<Map<String,Object>> resultList = playlistRepository.getCategoriesByUserId(id);
        return resultList;
    }

    public List<Map<String,Object>> getFavoriteArtistsByUserId(Long id) {
        System.out.println(id);
        List<Map<String,Object>> resultList = playlistRepository.getFavoriteArtistsByUserId(id);
        return resultList;
    }
}
