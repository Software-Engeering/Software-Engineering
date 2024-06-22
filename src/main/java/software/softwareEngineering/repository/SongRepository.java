package software.softwareEngineering.repository;

import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import software.softwareEngineering.entitiy.Song;

public interface SongRepository extends JpaRepository<Song, Long> {
    @Query(value = "SELECT * FROM song", nativeQuery = true)
    List<Song> getAllSongs();

    //playlist id 를 넘기면 포함된 모든 song 정보를 반환.
    @Query(value = "select s.* from song as s left join pointing as p on s.id = p.song_id where p.playlist_id = :id", nativeQuery = true)
    List<Song> getSongsByPlaylistId(@Param("id") Long id);

    @Query(value = "select p.* from pointing as p where playlist_id =  :id", nativeQuery = true)
    List<Song> getPointingByPlaylistId(@Param("id") Long id);

    @Query(value = "UPDATE seSpotify.pointing SET like_yn = :yn where playlist_id = :id", nativeQuery = true)
    void updatePointingByPlaylistId(@Param("id") Long id, @Param("yn") String yn);

    @Query(value = "INSERT INTO seSpotify.pointing (playlist_id, song_id, like_yn) VALUES (:playlist_id, :song_id, :yn)", nativeQuery = true)
    void insertPointingByPlaylistId(@Param("playlist_id") Long playlist_id, @Param("song_id") Long song_id, @Param("yn") String yn);

    @Query("select s from Song s where s.mode = 'Major' and s.playlist.id is null")
    List<Song> getExercise(Pageable pageable);
    @Query("select s from Song s where s.mode = 'Major' and s.playlist.id is null")
    List<Song> getDrive(Pageable pageable);

    @Query("select s from Song s where s.mode = 'Major' and s.playlist.id is null")
    List<Song> getStudy(Pageable pageable);

    @Query("select s from Song s where s.mode = 'Major' and s.playlist.id is null")
    List<Song> getFun(Pageable pageable);

    @Query("select s from Song s where s.mode = 'Major' and s.playlist.id is null")
    List<Song> getMidnight(Pageable pageable);
    @Query("select s from Song s where s.mode = 'Major' and s.playlist.id is null")
    List<Song> getRain(Pageable pageable);

    void deleteByPlaylistId(Long playlistId);
}
