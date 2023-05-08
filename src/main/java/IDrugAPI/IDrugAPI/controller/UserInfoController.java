package IDrugAPI.IDrugAPI.controller;

import IDrugAPI.IDrugAPI.service.UserInfoService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/usersInfo")
public class UserInfoController {

    private final UserInfoService userInfoService;

    public UserInfoController(UserInfoService userInfoService) {
        this.userInfoService = userInfoService;
    }

    @GetMapping("/")
    public ResponseEntity<?> getAllUsersInfo() {
        try{
            return ResponseEntity.ok(userInfoService.getAllUsersInfo());
        } catch (Exception e){
            return ResponseEntity.badRequest().body("Find error!");
        }
    }
}
