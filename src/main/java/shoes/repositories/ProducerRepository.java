package shoes.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import shoes.entities.Producer;

@Repository
public interface ProducerRepository extends JpaRepository<Producer, Integer>{
    @Query("Select p From Producer p where p.name =:name")
    Producer findProducerByName (@Param("name") String name);
}
