package shoes.services.orderStatus;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import shoes.entities.OrderStatus;
import shoes.repositories.OrderStatusRepository;

@Service
public class OrderStatusServiceImpl implements OrderStatusService{

	@Autowired
	OrderStatusRepository orderStatusRepository;

	@Override
	public List<OrderStatus> findAll() {
		return orderStatusRepository.findAll();
	}

	@Override
	public OrderStatus findById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OrderStatus create(OrderStatus t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OrderStatus update(OrderStatus t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(OrderStatus t) {
		// TODO Auto-generated method stub
		return false;
	}


}
