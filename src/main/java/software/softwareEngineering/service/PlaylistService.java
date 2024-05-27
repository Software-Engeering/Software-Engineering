package software.softwareEngineering.service;

import java.util.ArrayList;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import software.softwareEngineering.dto.PlaylistDTO;
import software.softwareEngineering.entitiy.Playlist;
import software.softwareEngineering.entitiy.Song;
import software.softwareEngineering.entitiy.User;
import software.softwareEngineering.repository.PlaylistRepository;

@Service
@RequiredArgsConstructor
public class PlaylistService {

    private final PlaylistRepository playlistRepository;

    public List<PlaylistDTO> getPlaylists(List<Playlist> playlists) {
        List<PlaylistDTO> playlistDTOs = new ArrayList<>();

        for (Playlist playlist : playlists) {
            PlaylistDTO playlistDTO = PlaylistDTO.builder()
                .id(playlist.getId())
                .category(playlist.getCategory())
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
}
