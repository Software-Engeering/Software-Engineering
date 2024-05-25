package software.softwareEngineering.service;

import java.util.ArrayList;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import software.softwareEngineering.dto.PlaylistDTO;
import software.softwareEngineering.entitiy.Playlist;
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

    public void makePlaylist(String category) {
        Playlist playlist = new Playlist();

        
    }
}
