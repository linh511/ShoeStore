package shoes.services.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import shoes.entities.Category;
import shoes.entities.Producer;
import shoes.entities.Product;
import shoes.exception.DuplicateProductNameException;
import shoes.repositories.ProductRepository;

@Service
public class ProductServiceImpl implements ProductService {


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
        return productRepository.save(t);
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
    public List<Product> findProductByName(String name) {
        name = "%" + name + "%";
        return productRepository.findProductByName(name);
    }

    @Override
    public Product checkProductName(String name) {
        return productRepository.checkProductName(name);
    }

    @Override
    public List<Product> findAndSortById() {
        return productRepository.findProductAndSort();
    }

    @Override
    public List<Product> findByCategory(Category category) {
        return productRepository.findProductByCategory(category);
    }

    @Override
    public List<Product> findByProducer(Producer producer) {
        return productRepository.findProductByProducer(producer);
    }

    @Override
    public List<Product> findByPageAble(Pageable pageable) {
        return productRepository.findProductByPageAble(pageable);
    }


}
