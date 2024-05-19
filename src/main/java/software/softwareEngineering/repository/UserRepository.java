package software.softwareEngineering.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import software.softwareEngineering.entitiy.User;

public interface UserRepository extends JpaRepository<User, Long> {

    @Query("select u from User u where u.account = :account")
    User getWithRoles(@Param("account") String account);
}
