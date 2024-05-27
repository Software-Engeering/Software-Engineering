package software.softwareEngineering.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import software.softwareEngineering.entitiy.Song;

public interface SongRepository extends JpaRepository<Song, Long> {

    @Query("select s from Song s where s.mode = 'Major' limit 10")
    List<Song> getExercise();

    @Query("select s from Song s where s.mode = 'Major' limit 10")
    List<Song> getDrive();

    @Query("select s from Song s where s.mode = 'Major' limit 10")
    List<Song> getStudy();

    @Query("select s from Song s where s.mode = 'Major' limit 10")
    List<Song> getFun();

    @Query("select s from Song s where s.mode = 'Major' limit 10")
    List<Song> getMidnight();

    @Query("select s from Song s where s.mode = 'Major' limit 10")
    List<Song> getRain();
}
