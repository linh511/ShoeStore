package shoes.services.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shoes.entities.User;
import shoes.repositories.UserRepository;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserRepository userRepository;

	@Override
	public List<User> findAll() {
		return userRepository.findAll();
	}

	@Override
	public User findById(Integer id) {
		return userRepository.getOne(id);
	}

	@Override
	public User create(User t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User update(User t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(User t) {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public User findUserByUsernameAndPassword(String username, String password) {
		return userRepository.findUserByUsernameAndPassword(username, password);
	}

}
