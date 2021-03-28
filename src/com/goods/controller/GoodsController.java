package com.goods.controller;

import com.goods.entity.Goods;
import com.goods.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.sql.Date;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;

/**
 * Author: TonyJam
 * Blog: https://www.tonyjam.cn/
 * Date: 2021/3/24 17:11
 */
@Controller
@RequestMapping("goods")
public class GoodsController {

    @Autowired
    GoodsService goodsService;

    @RequestMapping(value = "/findAll.do")
    @ResponseBody
    public Object findAll(HttpSession session, String rank){
        List<Goods> goodsList;
        if (rank == null || rank.equals("null")){
            rank = "publish_time";
        }

        goodsList = goodsService.findAll(rank);
        System.out.println(goodsList);
        session.setAttribute("goodsList", goodsList);
        return goodsList;
    }

    @RequestMapping(value = "/findById.do")
    @ResponseBody
    public Goods findById(Integer gid){
        Goods goods = goodsService.findById(gid);
        System.out.println(goods);
        return goods;
    }

    @RequestMapping(value = "/findByPage.do")
    public String findByPage(Integer index, HttpSession session){
        if (index == null) {
            index = 1;
        }
        List<Goods> goodsList = goodsService.findByPage(index);
        session.setAttribute("goodsList", goodsList);
        session.setAttribute("index", index);
//        System.out.println(goodsList.size());
        return "user-index";
    }

    @RequestMapping(value = "findUserGoods.do")
    @ResponseBody
    public List<Goods> findUserGoods(String username){
//        System.out.println(username);
        List<Goods> goodsList = goodsService.findUserGoods(username);
//        System.out.println(goodsList);
        return goodsList;
    }

    @RequestMapping(value = "/modifyStatus.do")
    @ResponseBody
    public Object modifyStatus(Integer gid, Integer status){
        System.out.println("offShelf:" + gid);
        HashMap<String, Object> map = new HashMap<>();
        if (goodsService.modifyStatus(gid, status)){
            map.put("success", 1);
        } else {
            map.put("success", 0);
        }
        return map;
    }

    @RequestMapping(value = "/refresh.do")
    @ResponseBody
    public Object refresh(Integer gid){
        HashMap<String, Object> map = new HashMap<>();
        if (goodsService.refresh(gid)){
            map.put("success", 1);
        } else {
            map.put("success", 0);
        }
        return map;
    }

    @RequestMapping(value = "/searchByKeyword.do")
    @ResponseBody
    public Object searchByKeywords(String keyword, String rank){

        System.out.println(keyword + " " + rank);
        if (rank == null){
            rank = "publish_time";
        }
        List<Goods> goodsList = goodsService.searchByKeywords(keyword, rank);
//        System.out.println(goodsList);
        return  goodsList;
    }

    @RequestMapping(value = "/searchByCategory.do")
    @ResponseBody
    public Object searchByCategory(Integer category, String rank){
//        System.out.println("category:" + category + " " + rank);
        if (rank == null){
            rank = "publish_time";
        }
        List<Goods> goodsList = goodsService.searchByCategory(category, rank);
//        System.out.println(goodsList);
        return goodsList;
    }

}
