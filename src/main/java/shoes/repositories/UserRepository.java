package shoes.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import shoes.entities.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer>{
  String FIND_USER = "Select u From User u where u.username =:username and u.password = :password";
  @Query(FIND_USER)
  User findUserByUsernameAndPassword(@Param("username") String username, @Param("password") String password);
}
