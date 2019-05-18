package shoes.services.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shoes.entities.Order;
import shoes.repositories.OrderRepository;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	OrderRepository orderRepository;
	
	@Override
	public List<Order> findAll() {
		return orderRepository.findAll();
	}

	@Override
	public Order findById(Integer id) {
		return orderRepository.getOne(id);
	}

	@Override
	public Order create(Order t) {
		return orderRepository.save(t);
	}

	@Override
	public Order update(Order t) {
		return orderRepository.save(t);
	}

	@Override
	public boolean delete(Order t) {
		try {
			orderRepository.delete(t);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}



	

}
