package com.goods.mapper;

import com.goods.entity.Goods;
import com.sun.org.apache.xpath.internal.operations.Bool;
import com.user.entity.User;

import java.util.List;

/**
 * Author: TonyJam
 * Blog: https://www.tonyjam.cn/
 * Date: 2021/3/24 17:12
 */
public interface GoodsMapper {
    List<Goods> findAll();
    List<Goods> findByPage(Integer index);
    List<Goods> findUserGoods(String username);
    Boolean modifyStatus(Integer gid, Integer status);
    Boolean refresh(Integer gid);
}
