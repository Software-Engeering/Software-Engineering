package software.softwareEngineering.entitiy;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.util.ArrayList;
import java.util.List;
import lombok.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import jakarta.persistence.*;

//초기 예시. 수정 예정
@Entity
@Table(name = "user")
@Getter
@Builder
@ToString(exclude = "password")
@NoArgsConstructor
@AllArgsConstructor
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String account;

    @Column(unique = true)
    private String email;

    private String password;

    @OneToMany(mappedBy = "user")
    private List<Playlist> playlists = new ArrayList<>();


    @OneToMany(mappedBy = "user")
    private List<Artist> artists = new ArrayList<>();

    public void addPlaylist(Playlist playlist) {
        playlists.add(playlist);
    }

    public void deletePlaylist(Playlist playlist) {
        playlists.remove(playlist);
    }

    public void updateEmailAndPassword(String newEmail, String newPassword) {
        this.email = newEmail;
        this.password = newPassword;
    }
}
