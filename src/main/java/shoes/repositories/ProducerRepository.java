package shoes.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import shoes.entities.Producer;

@Repository
public interface ProducerRepository extends JpaRepository<Producer, Integer>{

}
