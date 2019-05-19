package shoes.services.orderList;

import java.util.List;

import org.springframework.stereotype.Service;

import org.springframework.transaction.annotation.Transactional;
import shoes.entities.Order;
import shoes.entities.OrderList;
import shoes.services.BaseService;

@Service
@Transactional
public interface OrderListService extends BaseService<OrderList, Integer> {
	List<OrderList> findByOrder (Order order);

	void deleteOrderList (Order order);
}
