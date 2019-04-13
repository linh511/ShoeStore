package shoes.services.order;

import org.springframework.stereotype.Service;

import shoes.entities.Order;
import shoes.services.BaseService;

@Service
public interface OrderService extends BaseService<Order, Integer>{
   
}
