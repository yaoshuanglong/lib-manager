package com.book.manager.util.ro;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @Description 分页对象
 * @Date 2020/1/14 16:51
 * @Author YSL
 */
@Data
public class PageInNoKey {
    
    /** 当前页 */
    @ApiModelProperty("当前页")
    private Integer currPage;

    /** 当前页条数 */
    @ApiModelProperty("每页数量")
    private Integer pageSize;
}
