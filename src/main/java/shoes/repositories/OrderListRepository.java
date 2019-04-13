package shoes.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import shoes.entities.Order;
import shoes.entities.OrderList;

@Repository
public interface OrderListRepository extends JpaRepository<OrderList, Integer>{
	
	@Query("FROM OrderList o where o.order = :order")
	List<OrderList> findByOrderId (@Param("order") Order order);
}
