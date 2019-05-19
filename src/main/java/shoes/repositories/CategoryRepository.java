package shoes.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import shoes.entities.Category;

import java.util.List;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer>{
    @Query("Select c From Category c where c.name =:name")
    Category findCategoryByName (@Param("name") String name);

    @Query("From Category c ORDER BY c.id DESC")
    List<Category> findCategoryAndSort();
}
