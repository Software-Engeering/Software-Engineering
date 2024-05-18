package software.softwareEngineering.entitiy;

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
public class user {
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

    @Builder
    public user(int userId, String userEmail, String userPassword, String userName){
        this.userId = userId;
        this.userEmail = userEmail;
        this.userPassword = userPassword;
        this.userName = userName;
    }
}
