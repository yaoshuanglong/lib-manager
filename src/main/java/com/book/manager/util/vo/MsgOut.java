package com.book.manager.util.vo;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * 图书出参对象
 */
@Data
public class MsgOut {




    @ApiModelProperty("编号")
    private int id;

    @ApiModelProperty("留言")
    private String msg;

    @ApiModelProperty("时间")
    private String time;

}
