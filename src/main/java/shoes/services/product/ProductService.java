package shoes.services.product;

import java.util.List;

import org.springframework.stereotype.Service;

import shoes.entities.Category;
import shoes.entities.Product;
import shoes.services.BaseService;

@Service
public interface ProductService extends BaseService<Product, Integer> {
	List<Product> findProductByName(String name);
	
	List<Product> findAndSortById();
	
	List<Product> findByCategory (Category category);
}
