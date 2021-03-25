package com.goods.controller;

import com.goods.entity.Goods;
import com.goods.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
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
    public List<Goods> findAll(HttpSession session){
        List<Goods> goodsList;
        goodsList = goodsService.findAll();
        session.setAttribute("goodsList", goodsList);
        return goodsList;
    }
    @RequestMapping(value = "/findByPage.do")
    public String findByPage(Integer index, HttpSession map){
        if (index == null) {
            index = 1;
        }
        List<Goods> goodsList = goodsService.findByPage(index);
        map.setAttribute("goodsList", goodsList);
        System.out.println(goodsList.size());
        return "user-index";
    }



}
