package shoes.repositories;


import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import shoes.entities.Category;
import shoes.entities.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer>{
	@Query("From Product p where p.name like :search")
	List<Product> findProductByName (@Param("search") String name);
	
	@Query("Select p From Product p")
	List<Product> findProductByPageAble(Pageable pageable);
	
	@Query("From Product p ORDER BY p.id DESC")
	List<Product> findProductAndSort();
	
	@Query("FROM Product p where p.category = :category")
	List<Product> findProductByCategory(@Param("category") Category category);

}
