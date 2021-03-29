package com.wanted.service.impl;

import com.wanted.entity.Wanted;
import com.wanted.mapper.WantedMapper;
import com.wanted.service.WantedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Author: TonyJam
 * Blog: https://www.tonyjam.cn/
 * Date: 2021/3/28 19:23
 */
@Service("wantedService")
public class WantedServiceImpl implements WantedService {
    @Autowired
    private WantedMapper wantedMapper;

    @Override
    public Boolean createWanted(Wanted wanted) {
        return wantedMapper.createWanted(wanted);
    }

    @Override
    public List<Wanted> findAll() {
        return wantedMapper.findAll();
    }

    @Override
    public List<Wanted> findByUsername(String username) {
        return wantedMapper.findByUsername(username);
    }

    @Override
    public Wanted findById(Integer wid) {
        return wantedMapper.findById(wid);
    }

    @Override
    public Boolean delete(Integer wid) {
        return wantedMapper.delete(wid);
    }

}
