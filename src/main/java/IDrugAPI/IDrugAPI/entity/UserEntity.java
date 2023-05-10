package IDrugAPI.IDrugAPI.entity;


import IDrugAPI.IDrugAPI.enums.Gender;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

import static IDrugAPI.IDrugAPI.validation.message.UserMessages.EMAIL_CANNOT_BE_EMPTY;

@Entity
@Table(schema="idrug", name="users")
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class UserEntity {

    @Id
    @Column(name="id_user")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idUser;

    @Column(name="first_name")
    private String firstName;

    @Column(name="last_name")
    private String lastName;

    @Column(name="age")
    private Integer age;

    @Enumerated(EnumType.STRING)
    private Gender sex;

    @NotNull(message = EMAIL_CANNOT_BE_EMPTY) String validEmail
    @Column(name="email")
    private String email;

    @Column(name="password")
    private String password;

//    @OneToOne( mappedBy = "user")
//    private UserInfoEntity userInfo;

}
