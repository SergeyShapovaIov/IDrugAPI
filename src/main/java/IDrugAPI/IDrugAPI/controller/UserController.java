package IDrugAPI.IDrugAPI.controller;

import IDrugAPI.IDrugAPI.entity.UserEntity;
import IDrugAPI.IDrugAPI.message.UserMessage;
import IDrugAPI.IDrugAPI.service.UserService;
import lombok.NonNull;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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

    @PostMapping("/")
    public ResponseEntity<?> addUser(@RequestBody @NonNull UserEntity user) {

        try{
            UserEntity addedUser = userService.addUser(user);
            return ResponseEntity
                    .status(HttpStatus.CREATED)
                    .body(addedUser);
        } catch (Exception e) {
            return ResponseEntity.badRequest().body("Error!");
        }
    }

    @PutMapping("/{id}")
    public ResponseEntity<?> updateUserById(@RequestBody @NonNull UserEntity user,
                                            @RequestParam @NonNull Long id) {
        try {
            userService.updateById(user, id);

            return ResponseEntity
                    .body();
        } catch (Exception e) {

        }
    }
}
