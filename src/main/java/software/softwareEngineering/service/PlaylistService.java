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

    public Long makePlaylist(User user, String category, String playlistName) {
        Long danceability = 0L;
        Long valence = 0L;
        Long energy = 0L;
        Long acousticness = 0L;
        Long instrumentainess = 0L;
        Long liveness = 0L;
        Long speechiness = 0L;
        List<Song> songs = new ArrayList<>();

        switch(category){
            case "exercise":
                danceability = 50L;
                valence = 30L;
                energy = 80L;
                acousticness = 5L;
                instrumentainess = 5L;
                liveness = 80L;
                speechiness = 20L;
                break;
            case "drive":
                danceability = 45L;
                valence = 15L;
                energy = 80L;
                acousticness = 0L;
                instrumentainess = 6L;
                liveness = 80L;
                speechiness = 10L;
                break;
            case "study":
                danceability = 10L;
                valence = 70L;
                energy = 45L;
                acousticness = 70L;
                instrumentainess = 60L;
                liveness = 30L;
                speechiness = 10L;
                break;
            case "fun":
                danceability = 85L;
                valence = 30L;
                energy = 70L;
                acousticness = 10L;
                instrumentainess = 40L;
                liveness = 70L;
                speechiness = 80L;
                break;
            case "midnight":
                danceability = 10L;
                valence = 70L;
                energy = 15L;
                acousticness = 70L;
                instrumentainess = 60L;
                liveness = 40L;
                speechiness = 60L;
                break;
            case "rain":
                danceability = 15L;
                valence = 65L;
                energy = 45L;
                acousticness = 55L;
                instrumentainess = 50L;
                liveness = 45L;
                speechiness = 35L;
                break;
            case "artist":
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
                .title((playlistName == null || playlistName.trim().isEmpty()) ? "Playlist" : playlistName.trim())
            .category(category)
            .danceability(danceability)
            .valence(valence)
            .energy(energy)
            .acousticness(acousticness)
            .instrumentainess(instrumentainess)
            .liveness(liveness)
            .speechiness(speechiness)
            .user(user)
            //.songs(songs)
            .build();

       /* for (Song song : songList) {
            song.addPlayList(playlist);
        }*/

        playlistRepository.save(playlist);

        user.addPlaylist(playlist);

        System.out.println("=======================================");
        System.out.println(playlist.getId());
        return playlist.getId();
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
    @Transactional
    public List<Map<String,Object>> getFavoriteArtistsByUserId(Long id) {
        System.out.println(id);
        return playlistRepository.getFavoriteArtistsByUserId(id);
    }

    public List<Map<String,Object>> getFavorateMoodByUserId(Long id) {
        System.out.println(id);
        return playlistRepository.getFavorateMoodByUserId(id);
    }

}
