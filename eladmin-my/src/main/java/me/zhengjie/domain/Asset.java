package me.zhengjie.domain;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;
import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;

/**
 * @author Zheng Jie
 * @date 2018-11-24
 */
@Entity
@Data
@Table(name = "my_asset_list")
@NoArgsConstructor
public class Asset  implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private int id_pc;

    private int id_sc;

    private int id_an;
    private int id_dept;
    private int id_user;
    private int status;

}
