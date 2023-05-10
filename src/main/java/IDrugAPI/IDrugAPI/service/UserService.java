package IDrugAPI.IDrugAPI.service;

import IDrugAPI.IDrugAPI.entity.UserEntity;
import IDrugAPI.IDrugAPI.respository.UserRepository;
import jakarta.validation.ConstraintViolation;
import jakarta.validation.ValidationException;
import jakarta.validation.Validator;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class UserService {

    private final UserRepository userRepository;

    private final Validator validator;

    @Transactional
    public List<UserEntity> getAllUsers() {

        List<UserEntity> result = new ArrayList<UserEntity>();
        userRepository.findAll().forEach(result::add);

        return result;
    }

    public UserEntity addUser(UserEntity user) {
//        userRepository
//                .findById(user.getID())
//                .ifPresent(u -> {
//                    throw new UserWithMailAlreadyExistException();
//                });
        return userRepository.save(user);
    }

    @Transactional
    public UserEntity updateById(UserEntity user, Long id) {
        Set<ConstraintViolation<UserEntity>> violations = this.validator.validate(user);
        if (!violations.isEmpty()) {
            throw new ValidationException(
                    violations
                            .stream()
                            .map(ConstraintViolation::getMessage)
                            .collect(Collectors.joining("\n"))
            );
        }
        return this.userRepository
                .findById(id)
                .map(usr -> this.userRepository.save(user))
                .orElseThrow(
                        () -> new NoSuchElementException(
                                "User with id = %d not found"
                                        .formatted(id)
                        )
                );
    }
}
