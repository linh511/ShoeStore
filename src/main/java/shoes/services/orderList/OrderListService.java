package shoes.services.orderList;

import java.util.List;

import org.springframework.stereotype.Service;

import shoes.entities.Order;
import shoes.entities.OrderList;
import shoes.services.BaseService;

@Service
public interface OrderListService extends BaseService<OrderList, Integer> {
	List<OrderList> findByOrder (Order order);
}
