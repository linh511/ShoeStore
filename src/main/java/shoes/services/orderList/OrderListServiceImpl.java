package shoes.services.orderList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shoes.entities.Order;
import shoes.entities.OrderList;
import shoes.repositories.OrderListRepository;

@Service
public class OrderListServiceImpl implements OrderListService{

	@Autowired
	OrderListRepository orderListRepository;
	
	@Override
	public List<OrderList> findAll() {
		return orderListRepository.findAll();
	}

	@Override
	public OrderList findById(Integer id) {
		return null;
	}

	@Override
	public OrderList create(OrderList t) {
		return orderListRepository.save(t);
	}

	@Override
	public OrderList update(OrderList t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(OrderList t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public OrderList findByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<OrderList> findByOrder(Order order) {
		return orderListRepository.findByOrderId(order);
	}

}
