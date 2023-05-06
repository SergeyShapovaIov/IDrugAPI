package IDrugAPI.IDrugAPI.entity;


import jakarta.persistence.*;
import lombok.Data;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Entity
@Table(name="users")
@Data
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

    @Column(name="sex")
    private String sex;

    @Column(name="email")
    private String email;

    @Column(name="password")
    private String password;

}
