package shoes.services.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shoes.entities.Category;
import shoes.entities.Product;
import shoes.exception.DuplicateProductNameException;
import shoes.repositories.ProductRepository;

@Service
public class ProductServiceImpl implements ProductService{

	
	@Autowired
	ProductRepository productRepository;

	@Override
	public List<Product> findAll() {
		return productRepository.findAll();
	}

	@Override
	public Product findById(Integer id) {
		return productRepository.getOne(id);
	}

	@Override
	public Product create(Product t) {
		return productRepository.save(t);
	}

	@Override
	public Product update(Product t) {
		Product p = findByName(t.getName());
		if(p!= null) {
			if(!p.getId().equals(t.getId()))
				throw new DuplicateProductNameException();
		}
		return productRepository.save(p);
	}

	@Override
	public boolean delete(Product t) {
		try {
			productRepository.delete(t);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	public Product findByName(String name) {
		return null;
	}

	@Override
	public List<Product> findProductByName(String name) {
		return productRepository.findProductByName(name);
	}

	@Override
	public List<Product> findAndSortById() {
		return productRepository.findProductAndSort();
	}

	@Override
	public List<Product> findByCategory(Category category) {
		return productRepository.findProductByCategory(category);
	}


}
