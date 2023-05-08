package IDrugAPI.IDrugAPI.service;

import IDrugAPI.IDrugAPI.entity.UserInfoEntity;
import IDrugAPI.IDrugAPI.respository.UserInfoRepository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserInfoService {

    private final UserInfoRepository userInfoRepository;

    public UserInfoService(UserInfoRepository userInfoRepository) {
        this.userInfoRepository = userInfoRepository;
    }

    public List<UserInfoEntity> getAllUsersInfo() {

        List<UserInfoEntity> result = new ArrayList<UserInfoEntity>();
        userInfoRepository.findAll().forEach(result::add);
        return result;

    }
}
