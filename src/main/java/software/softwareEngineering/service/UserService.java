package software.softwareEngineering.service;

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
    public void join(UserDTO userDTO) {
        User user = User.builder()
            .account(userDTO.getAccount())
            .password(passwordEncoder.encode(userDTO.getPassword()))
            .email(userDTO.getEmail())
            .build();

        userRepository.save(user);
    }

    public User find(UserDTO userDTO) {
        return userRepository.getWithRoles(userDTO.getAccount());
    }
}
