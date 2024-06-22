package software.softwareEngineering.repository;

import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import software.softwareEngineering.entitiy.Song;

public interface SongRepository extends JpaRepository<Song, Long> {
    @Query(value = "SELECT * FROM song", nativeQuery = true)
    List<Song> getAllSongs();

    //playlist id 를 넘기면 포함된 모든 song 정보를 반환.
    @Query(value = "select s.* from song as s left join pointing as p on s.id = p.song_id where p.playlist_id = :id and p.like_yn = \"y\"", nativeQuery = true)
    List<Song> getSongsByPlaylistId(@Param("id") Long id);

    @Query(value = "select p.* from pointing as p where playlist_id =  :id", nativeQuery = true)
    List<Map<String,Object>> getPointingByPlaylistId(@Param("id") Long id);

    @Modifying
    @Query(value = "UPDATE seSpotify.pointing SET like_yn = :yn where playlist_id = :playlist_id and song_id = :song_id", nativeQuery = true)
    void updatePointingByPlaylistId(@Param("playlist_id") Long playlist_id, @Param("song_id") Long song_id, @Param("yn") String yn);

    @Modifying
    @Query(value = "INSERT INTO seSpotify.pointing (playlist_id, song_id, like_yn) VALUES (:playlist_id, :song_id, :yn)", nativeQuery = true)
    void insertPointingByPlaylistId(@Param("playlist_id") Long playlist_id, @Param("song_id") Long song_id, @Param("yn") String yn);

    //void deleteByPlaylistId(Long playlistId);
}
