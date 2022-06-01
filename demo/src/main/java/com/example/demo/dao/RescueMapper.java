package com.example.demo.dao;

import com.example.demo.domain.Rescue;

public interface RescueMapper {
    int deleteByPrimaryKey(Integer rescueId);

    int insert(Rescue record);

    int insertSelective(Rescue record);

    Rescue selectByPrimaryKey(Integer rescueId);

    int updateByPrimaryKeySelective(Rescue record);

    int updateByPrimaryKey(Rescue record);
}