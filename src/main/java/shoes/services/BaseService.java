package shoes.services;

import java.io.Serializable;
import java.util.List;

public interface BaseService<T, ID extends Serializable> {

	List<T> findAll();
	
	T findById (ID id);
	
	T create( T t);
	
	T update (T t);
	
	boolean delete (T t);


}
