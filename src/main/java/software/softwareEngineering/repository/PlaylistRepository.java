package software.softwareEngineering.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import software.softwareEngineering.entitiy.Playlist;

import java.util.List;
import java.util.Map;

public interface PlaylistRepository extends JpaRepository<Playlist, Long> {

    @Query(value = "SELECT p.category, count(p.category) as num FROM playlist p WHERE p.user_id = :id GROUP BY p.category", nativeQuery = true)
    List<Map<String,Object>> getCategoriesByUserId(@Param("id") Long id);
    @Modifying
    @Query(value = "SELECT s.artist_name AS artist_name, count(s.artist_name) AS num " +
            "FROM playlist p " +
            "LEFT JOIN pointing ON p.id = pointing.playlist_id " +
            "LEFT JOIN song s ON pointing.song_id = s.id " +
            "WHERE p.user_id = :id " +
            "GROUP BY s.artist_name " +
            "ORDER BY num DESC " +
            "LIMIT 5", nativeQuery = true)
    List<Map<String, Object>> getFavoriteArtistsByUserId(@Param("id") Long id);

    @Query(value = "SELECT AVG(acousticness) as acousticness, AVG(instrumentainess) as instrumentainess, AVG(liveness) as liveness, AVG(speechiness) as speechiness, AVG(energy) as energy, AVG(valence) as valence, AVG(danceability) as danceability from playlist where user_id = :id", nativeQuery = true)
    List<Map<String,Object>> getFavorateMoodByUserId(@Param("id") Long id);

}

