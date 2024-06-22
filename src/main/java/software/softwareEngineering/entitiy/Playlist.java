package software.softwareEngineering.entitiy;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Playlist {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;

    private String category;

    //취향 정보
    public Long danceability;
    public Long valence;
    public Long energy;
    public Long acousticness;
    public Long instrumentainess;
    public Long liveness;
    public Long speechiness;

    @ManyToOne(fetch = FetchType.LAZY)
    private User user;

   /* @OneToMany(mappedBy = "playlist")
    private List<Song> songs = new ArrayList<>();*/
}
