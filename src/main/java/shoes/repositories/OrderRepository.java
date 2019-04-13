package shoes.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import shoes.entities.Order;

@Repository
public interface OrderRepository extends JpaRepository<Order, Integer>{

}
