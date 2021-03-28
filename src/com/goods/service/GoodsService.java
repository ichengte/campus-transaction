package com.goods.service;

import com.goods.entity.Goods;
import com.sun.org.apache.xpath.internal.operations.Bool;
import com.user.entity.User;

import java.util.List;

/**
 * Author: TonyJam
 * Blog: https://www.tonyjam.cn/
 * Date: 2021/3/24 17:12
 */
public interface GoodsService {
    List<Goods> findAll(String rank);
    Goods findById(Integer gid);
    List<Goods> findByPage(Integer index);
    List<Goods> findUserGoods(String username);
    Boolean modifyStatus(Integer gid, Integer status);
    Boolean refresh(Integer gid);
    List<Goods> searchByKeywords(String keyword, String rank);
    List<Goods> searchByCategory(Integer category, String rank);
    Boolean saveInfo(Goods goods);
    Boolean goodsPublish(Goods goods);
}
