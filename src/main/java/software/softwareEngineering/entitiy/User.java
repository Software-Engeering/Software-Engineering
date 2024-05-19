package software.softwareEngineering.entitiy;

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
@ToString(exclude = "password")
@NoArgsConstructor
public class User {
    @Id
    @Column(name = "user_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "account")
    private String account;

    @Column(name = "user_email", unique = true)
    private String email;

    @Column(name = "user_password")
    private String password;

    @OneToMany(mappedBy = "user")
    private List<Playlist> playlists = new ArrayList<>();

    @OneToMany(mappedBy = "user")
    private List<Preference> preferences = new ArrayList<>();

    @OneToMany(mappedBy = "user")
    private List<Artist> artists = new ArrayList<>();

    @Builder
    public User(Long id, String email, String password, String account){
        this.id = id;
        this.email = email;
        this.password = password;
        this.account = account;
    }
}
