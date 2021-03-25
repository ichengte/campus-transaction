package com.category.mapper;


import com.category.entity.Category;

import java.util.List;

/**
 * Author: TonyJam
 * Blog: https://www.tonyjam.cn/
 * Date: 2021/3/24 17:34
 */
public interface CategoryMapper {
    List<Category> findAll();
}
