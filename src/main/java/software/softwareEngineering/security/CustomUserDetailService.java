package software.softwareEngineering.security;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import software.softwareEngineering.dto.UserDTO;
import software.softwareEngineering.entitiy.User;
import software.softwareEngineering.repository.UserRepository;

@Service
@Log4j2
@RequiredArgsConstructor
public class CustomUserDetailService implements UserDetailsService {

    private final UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        log.info("----------------loadByUsername------------------" + username);

        User user = userRepository.getWithRoles(username);

        UserDTO userDTO = new UserDTO(
            user.getAccount(),
            user.getPassword(),
            user.getEmail()
        );

        log.info(userDTO);

        return userDTO;
    }
}
