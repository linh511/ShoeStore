package shoes.services.category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shoes.entities.Category;
import shoes.repositories.CategoryRepository;

@Service
public class CategoryServiceImpl implements CategoryService{

	
	@Autowired
	CategoryRepository categoryRepository;

	@Override
	public List<Category> findAll() {
		return categoryRepository.findAll();
	}

	@Override
	public Category findById(Integer id) {
		return categoryRepository.getOne(id);
	}

	@Override
	public Category create(Category t) {
		return categoryRepository.save(t);
	}

	@Override
	public Category update(Category t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Category> findAndSortById() {
		return categoryRepository.findCategoryAndSort();
	}

	@Override
	public boolean delete(Category t) {
		try {
			categoryRepository.delete(t);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	@Override
	public Category findCategoryByName(String name) {
		return categoryRepository.findCategoryByName(name);
	}
}
