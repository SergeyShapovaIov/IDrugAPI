package IDrugAPI.IDrugAPI.controller;

import IDrugAPI.IDrugAPI.service.UserService;
import lombok.NonNull;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/users")
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/")
    public ResponseEntity<?> getAllUsers () {
        try{
            return ResponseEntity.ok(userService.getAllUsers());
        } catch (Exception e){
            return ResponseEntity.badRequest().body("Find error!");
        }
    };
}
