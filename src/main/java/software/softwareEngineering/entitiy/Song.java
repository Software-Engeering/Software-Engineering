package software.softwareEngineering.entitiy;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Song {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "playlist_id")
    private Playlist playlist;

    // 추후 추가 예정
    private String track_name;
    private String artist_name;
    private String released_data;
    private String streams;
    private String bpm;
    private String octave;
    private String mode;
    private String danceability;
    private String valence;
    private String energy;
    private String acousticness;
    private String instrumentainess;
    private String liveness;
    private String speechiness;
}
