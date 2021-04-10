package com.book.manager.service;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.date.DateUtil;
import com.book.manager.dao.MsgMapper;
import com.book.manager.entity.Msg;
import com.book.manager.repos.MsgRepository;
import com.book.manager.util.ro.PageIn;
import com.book.manager.util.ro.PageInNoKey;
import com.book.manager.util.vo.MsgOut;
import com.book.manager.util.vo.PageOut;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @Description 留言业务类
 * @Date 2020/2/14 16:31
 * @Author YSL
 */
@Service
public class MsgService {

    @Autowired
    private MsgRepository msgRepository;

    @Autowired
    private MsgMapper msgMapper;


    /**
     * 添加
     * @param msg 留言
     * @return 返回添加的图书
     */
    public Msg addMsg(Msg msg) {
        return msgRepository.saveAndFlush(msg);
    }


    /**
     * 删除
     * @param id 主键
     * @return true or false
     */
    public void deleteMsg(Integer id) {
        msgRepository.deleteById(id);
    }


    /**
     * 留言查询(mybatis 分页)
     * @param pageInNoKey
     * @return
     */
    public PageOut getMsgList(PageInNoKey pageInNoKey) {

        PageHelper.startPage(pageInNoKey.getCurrPage(),pageInNoKey.getPageSize());
        List<Msg> list = msgRepository.findAll();
        PageInfo<Msg> pageInfo = new PageInfo<>(list);

//        List<MsgOut> ms = new ArrayList<>();
//        for (Msg msg : pageInfo.getList()) {
//            MsgOut out = new MsgOut();
//            BeanUtil.copyProperties(msg,out);
//            out.setTime(DateUtil.format(msg.getTime(),"yyyy-MM-dd"));
//            ms.add(out);
//        }

        // 自定义分页返回对象
        PageOut pageOut = new PageOut();
        pageOut.setList(list);
        pageOut.setTotal((int)pageInfo.getTotal());
        pageOut.setCurrPage(pageInfo.getPageNum());
        pageOut.setPageSize(pageInfo.getPageSize());
        return pageOut;
    }


}
