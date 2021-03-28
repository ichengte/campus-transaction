package com.goods.service.impl;

import com.goods.entity.Goods;
import com.goods.mapper.GoodsMapper;
import com.goods.service.GoodsService;
import com.user.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Author: TonyJam
 * Blog: https://www.tonyjam.cn/
 * Date: 2021/3/24 17:39
 */
@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {

    @Autowired
    GoodsMapper goodsMapper;

    @Override
    public List<Goods> findAll(String rank) {
        return goodsMapper.findAll(rank);
    }

    @Override
    public Goods findById(Integer gid) {
        return goodsMapper.findById(gid);
    }

    @Override
    public List<Goods> findByPage(Integer index) {
        return goodsMapper.findByPage(index);
    }

    @Override
    public List<Goods> findUserGoods(String username) {
        return goodsMapper.findUserGoods(username);
    }

    @Override
    public Boolean modifyStatus(Integer gid, Integer status) {
        return goodsMapper.modifyStatus(gid, status);
    }

    @Override
    public Boolean refresh(Integer gid) {
        return goodsMapper.refresh(gid);
    }

    @Override
    public List<Goods> searchByKeywords(String keyword, String rank) {
        return goodsMapper.searchByKeywords(keyword, rank);
    }

    @Override
    public List<Goods> searchByCategory(Integer category, String rank) {
        return goodsMapper.searchByCategory(category, rank);
    }

    @Override
    public Boolean publishGoods(Goods goods) {
        return goodsMapper.publishGoods(goods);
    }
}
