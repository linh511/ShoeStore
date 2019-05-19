package shoes.services.role;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import shoes.entities.Role;
import shoes.repositories.RoleRepository;

import java.util.List;

@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
    RoleRepository roleRepository;

    @Override
    public List<Role> findAll() {
        return null;
    }

    @Override
    public Role findById(Integer id) {
        return roleRepository.getOne(id);
    }

    @Override
    public Role create(Role role) {
        return null;
    }

    @Override
    public Role update(Role role) {
        return null;
    }

    @Override
    public boolean delete(Role role) {
        return false;
    }
}
