package com.category.controller;

import com.category.entity.Category;
import com.category.service.CategoryService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Author: TonyJam
 * Blog: https://www.tonyjam.cn/
 * Date: 2021/3/24 17:33
 */
@Controller
@RequestMapping(value = "category")
public class CategoryController {
    @Autowired
    CategoryService categoryService;

    @RequestMapping(value = "/findAll.do")
    @ResponseBody
    public List<Category> findAll(){
        List<Category> categoryList = categoryService.findAll();
        System.out.println(categoryList);
        return categoryList;
    }

}
