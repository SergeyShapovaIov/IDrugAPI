package IDrugAPI.IDrugAPI.respository;


import IDrugAPI.IDrugAPI.entity.UserEntity;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface UserRepository extends CrudRepository<UserEntity, Long> {
//    Optional<UserEntity> findByMail(String mail);
}
