package shoes.services.producer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import shoes.entities.Producer;
import shoes.repositories.ProducerRepository;

@Service
public class ProducerServiceImpl implements ProducerService{

	
	@Autowired
	ProducerRepository producerRepository;

	@Override
	public List<Producer> findAll() {
		return producerRepository.findAll();
	}

	@Override
	public Producer findById(Integer id) {
		return producerRepository.getOne(id);
	}

	@Override
	public Producer create(Producer t) {
		return producerRepository.save(t);
	}

	@Override
	public Producer update(Producer t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(Producer t) {
		try {
			producerRepository.delete(t);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Producer findProducerByName(String name) {
		return producerRepository.findProducerByName(name);
	}
}
