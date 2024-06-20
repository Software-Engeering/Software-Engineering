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
        Playlist playlist = Playlist.builder()
            .title("Playlist")
            .category(category)
            .songs(songList)
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
