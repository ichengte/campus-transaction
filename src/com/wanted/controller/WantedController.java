package com.wanted.controller;

import com.wanted.entity.Wanted;
import com.wanted.service.WantedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;

/**
 * Author: TonyJam
 * Blog: https://www.tonyjam.cn/
 * Date: 2021/3/28 19:21
 */
@Controller
@RequestMapping(value = "wanted")
public class WantedController {
    @Autowired
    private WantedService wantedService;

    @RequestMapping(value = "/createWanted.do")
    @ResponseBody
    public Object createWanted(Wanted wanted){
//        System.out.println(wanted);
        Date now = new Date(System.currentTimeMillis());
        wanted.setCreatetime(now);

        HashMap<String, Object> map = new HashMap<>();
        if (wantedService.createWanted(wanted)){
            map.put("success", 1);
        } else {
            map.put("success", 0);
        }
        return map;
    }

    @RequestMapping(value = "findAll.do")
    @ResponseBody
    public Object findAll(){
        List<Wanted> wantedList = wantedService.findAll();
//        System.out.println(wantedList);
        return wantedList;
    }

    @RequestMapping(value = "findByUsername.do")
    @ResponseBody
    public Object findByUsername(String username){
        List<Wanted> wantedList = wantedService.findByUsername(username);
//        System.out.println(wantedList);
        return wantedList;
    }


    public Wanted findById(Integer wid){
        Wanted wanted = wantedService.findById(wid);
        System.out.println(wanted);
        return wanted;
    }

    @RequestMapping(value = "/delete.do")
    @ResponseBody
    public Object delete(Integer wid){
        System.out.println(wid);
        HashMap<String, Object> map = new HashMap<>();
        if (wantedService.delete(wid)){
            map.put("success", 1);
        } else {
            map.put("success", 0);
        }
        return map;
    }
}
