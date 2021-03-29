package com.wanted.mapper;

import com.sun.org.apache.xpath.internal.operations.Bool;
import com.wanted.entity.Wanted;

import java.util.List;

/**
 * Author: TonyJam
 * Blog: https://www.tonyjam.cn/
 * Date: 2021/3/28 19:22
 */
public interface WantedMapper {
    Boolean createWanted(Wanted wanted);
    List<Wanted> findAll();
    List<Wanted> findByUsername(String username);
    Wanted findById(Integer wid);
    Boolean delete(Integer wid);
}
