package IDrugAPI.IDrugAPI.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name="users_info")
@Data
public class UserInfoEntity {

    @Id
    @Column(name="id_user_info")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idUserInfo;

    @Column(name="description")
    private String description;

    @OneToOne
    @JoinColumn(name="user_id")
    private UserEntity user;

}
