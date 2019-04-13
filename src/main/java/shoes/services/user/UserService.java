package shoes.services.user;

import org.springframework.stereotype.Service;

import shoes.entities.User;
import shoes.services.BaseService;

@Service
public interface UserService extends BaseService<User, Integer> {
	User findUserByUsernameAndPassword(String username, String password);
}
