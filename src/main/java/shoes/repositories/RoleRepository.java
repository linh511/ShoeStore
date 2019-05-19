package shoes.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import shoes.entities.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role,Integer> {
}
