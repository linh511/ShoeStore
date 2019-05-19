package shoes.services.category;

import org.springframework.stereotype.Service;

import shoes.entities.Category;
import shoes.services.BaseService;

import java.util.List;

@Service
public interface CategoryService extends BaseService<Category, Integer> {
    Category findCategoryByName(String name);
    List<Category> findAndSortById();
}
