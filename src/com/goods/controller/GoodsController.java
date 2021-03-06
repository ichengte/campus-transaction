package com.goods.controller;

import com.goods.entity.Goods;
import com.goods.entity.GoodsDto;
import com.goods.service.GoodsService;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.*;

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
    public Object findAll(HttpSession session, String rank, Integer limit){
//        System.out.println(limit + ":code");
        List<Goods> goodsList = new ArrayList<>();
        int rank_idx = 3;
        if (rank == null) rank = "publish_time";
        switch (rank) {
            case "credit":
                rank_idx = 24;
                break;
            case "recommendation":
                rank_idx = 12;
                break;
            case "sell_price":
                rank_idx = 6;
                break;
        }
//        System.out.println(rank_idx);
        goodsList = goodsService.findAll(rank_idx);
        HashMap<String, Object> map = new HashMap<>();
        if (limit != null){
            if (goodsList.isEmpty()){
                map.put("code", 1);
            } else {
                map.put("code", 0);
                map.put("msg", "");
                map.put("count", goodsList.size());
                map.put("data", goodsList);
            }
            return map;
        }
//        System.out.println(goodsList);
//        for (Goods g : goodsList) {
//            System.out.println(g.getPublish_time());
//        }
        session.setAttribute("index", 1);
//        session.setAttribute("goodsList", goodsList);
        return goodsList;
    }

    @RequestMapping(value = "/findById.do")
    @ResponseBody
    public Goods findById(Integer gid){
        Goods goods = goodsService.findById(gid);
        System.out.println(goods);
        goodsService.addGoodsViews(gid);
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
        System.out.println(goodsList.size());
        return "user-index";
    }

    @RequestMapping(value = "/findUserGoods.do")
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


    public Object saveInfo(GoodsDto goodsDto) throws IOException {
        Goods goods = goodsDto.getGoods();
        MultipartFile file = goodsDto.getPicture();
        String filename = UUID.randomUUID() + ".jpg";

//        System.out.println(filename);
        System.out.println(goods);
        File filepath = new File("C:/GitHub/campus-transaction/WebContent/goods/" + filename);
        file.transferTo(filepath);

        goods.setPicture(filename);

        HashMap<String, Object> map = new HashMap<>();
        if (goodsService.saveInfo(goods)){
            map.put("success", 1);
        } else {
            map.put("success", 0);
        }
        return map;
    }

    @RequestMapping(value = "/goodsPublish.do")
    @ResponseBody
    public Object goodsPublish(GoodsDto goodsDto) throws IOException {
        Goods goods = goodsDto.getGoods();
        MultipartFile file = goodsDto.getPicture();
        String filename = UUID.randomUUID() + ".jpg";
        Date now = new Date(System.currentTimeMillis());
        System.out.println(now);
//        System.out.println(filename);

        goods.setPublish_time(now);
        System.out.println(goods);
        File filepath = new File("C:/GitHub/campus-transaction/WebContent/goods/" + filename);
        file.transferTo(filepath);

        goods.setPicture(filename);

        System.out.println("goodsPublish.do" + goods);
        HashMap<String, Object> map = new HashMap<>();
        if (goodsService.goodsPublish(goods)){
            map.put("success", 1);
        } else {
            map.put("success", 0);
        }
        return map;
    }

    @RequestMapping(value = "/delete.do")
    @ResponseBody
    public Object delete(Integer gid){

        HashMap<String, Object> map = new HashMap<>();
        if (goodsService.delete(gid)){
            map.put("success", 1);
        } else {
            map.put("success", 0);
        }
        return map;
    }


}
