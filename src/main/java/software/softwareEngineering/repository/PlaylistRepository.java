package software.softwareEngineering.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import software.softwareEngineering.entitiy.Playlist;

import java.util.List;
import java.util.Map;

public interface PlaylistRepository extends JpaRepository<Playlist, Long> {

    @Query(value = "SELECT p.category, count(p.category) as num FROM playlist p WHERE p.user_id = :id GROUP BY p.category", nativeQuery = true)
    List<Map<String,Object>> getCategoriesByUserId(@Param("id") Long id);

    @Query(value = "SELECT s.artist_name, count(s.artist_name) as num " +
            " FROM playlist p left join song s on p.id = s.playlist_id WHERE p.user_id = :id group by s.artist_name order by num desc limit 5", nativeQuery = true)
    List<Map<String,Object>> getFavoriteArtistsByUserId(@Param("id") Long id);
}
