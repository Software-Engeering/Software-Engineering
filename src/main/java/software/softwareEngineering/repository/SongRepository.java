package software.softwareEngineering.repository;

import java.util.List;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import software.softwareEngineering.entitiy.Song;

public interface SongRepository extends JpaRepository<Song, Long> {

    @Query("select s from Song s where s.mode = 'Major'")
    List<Song> getExercise(Pageable pageable);

    @Query("select s from Song s where s.mode = 'Major'")
    List<Song> getDrive(Pageable pageable);

    @Query("select s from Song s where s.mode = 'Major'")
    List<Song> getStudy(Pageable pageable);

    @Query("select s from Song s where s.mode = 'Major'")
    List<Song> getFun(Pageable pageable);

    @Query("select s from Song s where s.mode = 'Major'")
    List<Song> getMidnight(Pageable pageable);
    @Query("select s from Song s where s.mode = 'Major'")
    List<Song> getRain(Pageable pageable);
}
