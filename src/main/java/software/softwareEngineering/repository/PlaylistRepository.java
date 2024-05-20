package software.softwareEngineering.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import software.softwareEngineering.entitiy.Playlist;

public interface PlaylistRepository extends JpaRepository<Playlist, Long> {

}
