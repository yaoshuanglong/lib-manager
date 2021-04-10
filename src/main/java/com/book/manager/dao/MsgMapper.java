package com.book.manager.dao;

import com.book.manager.entity.Msg;
import com.book.manager.entity.Users;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

/**
 * @Description
 * @Date 2021/1/14 19:57
 * @Author YSL
 */
@Mapper
@Component
public interface MsgMapper {

    /**
     * 查看所有留言
     * @return
     */
    List<Msg> findList();

    /**
     * 添加留言
     * @param msg
     * @return
     */
    void addMsg(String msg);
}
