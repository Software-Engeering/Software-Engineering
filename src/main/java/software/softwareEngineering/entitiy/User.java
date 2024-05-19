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
@ToString(exclude = "userPassword")
@NoArgsConstructor
public class User {
    @Id
    @Column(name = "user_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int userId;

    @Column(name = "user_email", unique = true)
    private String userEmail;

    @Column(name = "user_password")
    private String userPassword;

    @Column(name = "user_name")
    private String userName;

    @OneToMany(mappedBy = "user")
    private List<Playlist> playlists = new ArrayList<>();

    @OneToMany(mappedBy = "user")
    private List<Preference> preferences = new ArrayList<>();

    @OneToMany(mappedBy = "user")
    private List<Artist> artists = new ArrayList<>();

    @Builder
    public User(int userId, String userEmail, String userPassword, String userName){
        this.userId = userId;
        this.userEmail = userEmail;
        this.userPassword = userPassword;
        this.userName = userName;
    }
}
