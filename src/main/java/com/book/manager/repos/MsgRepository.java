package com.book.manager.repos;

import com.book.manager.entity.Msg;
import com.book.manager.entity.Users;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 * @Description 留言
 * @Date 2020/2/14 16:06
 * @Author YSL
 */
@Repository
public interface MsgRepository extends JpaRepository<Msg,Integer>{



}
