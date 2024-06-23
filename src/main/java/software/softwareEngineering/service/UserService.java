package software.softwareEngineering.service;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import software.softwareEngineering.dto.UserDTO;
import software.softwareEngineering.entitiy.User;
import software.softwareEngineering.repository.UserRepository;

@Service
@RequiredArgsConstructor
public class UserService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    // 회원가입
    public Boolean join(UserDTO userDTO) {
        if (userRepository.findByEmail(userDTO.getEmail()) != null) {
            return false;
        }

        User user = User.builder()
            .account(userDTO.getAccount())
            .password(passwordEncoder.encode(userDTO.getPassword()))
            .email(userDTO.getEmail())
            .build();

        userRepository.save(user);
        return true;
    }

    public User find(UserDTO userDTO) {
        return userRepository.getWithRoles(userDTO.getAccount());
    }

    @Transactional
    public boolean updateEmailAndPassword(String account, String oldPassword, String newEmail, String newPassword) {
        User user = userRepository.getWithRoles(account);
        if (user != null && passwordEncoder.matches(oldPassword, user.getPassword())) {
            user.updateEmailAndPassword(newEmail, passwordEncoder.encode(newPassword));
            userRepository.save(user);
            return true;
        }
        else {
            return false;
        }
    }

    public String findPassword(String username, String email) {
        User user = userRepository.findPassword(username, email);
        if (user == null) {
            return "No user found with the provided information.";
        }
        user.updateEmailAndPassword(email, passwordEncoder.encode("1234"));
        userRepository.save(user);
        return "Password has been successfully reset to '1234'.";
    }
}
