package com.book.manager.entity;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.sql.Date;

/**
 * @Description:
 * @NAME: Msg
 * @USER: YSL
 * @YEAR: 2021/2/14 12:23
 **/
@Data
@NoArgsConstructor
@AllArgsConstructor
@DynamicInsert
@Entity
@Table(name = "msg")
public class Msg {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @ApiModelProperty("编号")
    private int id;

    @ApiModelProperty("留言")
    private String umsg;

    @ApiModelProperty("时间")
    private Date time;
}
