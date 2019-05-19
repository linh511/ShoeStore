package shoes.services.product;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import shoes.entities.Category;
import shoes.entities.Producer;
import shoes.entities.Product;
import shoes.services.BaseService;

@Service
public interface ProductService extends BaseService<Product, Integer> {
	List<Product> findProductByName(String name);
	
	List<Product> findAndSortById();
	
	List<Product> findByCategory (Category category);

	List<Product> findByProducer (Producer producer);

	List<Product> findByPageAble (Pageable pageable);

	Product checkProductName(String name);
}
