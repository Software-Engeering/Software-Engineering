package software.softwareEngineering.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;

@Getter
@Setter
@ToString
public class UserDTO extends User {

    private String account;
    private String password;
    private String email;

    public UserDTO(String account, String password, String email) {

        super(account, password, AuthorityUtils.createAuthorityList("ROLE_USER"));

        this.account = account;
        this.password = password;
        this.email = email;
    }
}
