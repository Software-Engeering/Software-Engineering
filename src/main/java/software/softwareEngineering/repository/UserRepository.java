package software.softwareEngineering.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import software.softwareEngineering.entitiy.User;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {
    @Query("select u from User u where u.email = :email")
    User findByEmail(@Param("email") String email);
    @Query("select u from User u where u.account = :account")
    User getWithRoles(@Param("account") String account);

    @Query("select u from User u where u.account = :account and u.email = :email")
    User findPassword(@Param("account") String account, @Param("email") String email);
}
