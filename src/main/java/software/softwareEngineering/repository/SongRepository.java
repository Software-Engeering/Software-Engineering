package software.softwareEngineering.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import software.softwareEngineering.entitiy.Song;

public interface SongRepository extends JpaRepository<Song, Long> {

}
