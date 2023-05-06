package IDrugAPI.IDrugAPI.service;

import IDrugAPI.IDrugAPI.entity.UserEntity;
import IDrugAPI.IDrugAPI.respository.UserRepository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

@Service
public class UserService {

    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public List<UserEntity> getAllUsers() {

        AtomicReference<UserEntity> user = new AtomicReference<>();

        List<UserEntity> result = new ArrayList<UserEntity>();
        userRepository.findAll().forEach(result::add);

        return result;
    }
}
