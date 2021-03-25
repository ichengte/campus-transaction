package com.goods.service;

import com.goods.entity.Goods;

import java.util.List;

/**
 * Author: TonyJam
 * Blog: https://www.tonyjam.cn/
 * Date: 2021/3/24 17:12
 */
public interface GoodsService {
    List<Goods> findAll();
    List<Goods> findByPage(Integer index);
}
