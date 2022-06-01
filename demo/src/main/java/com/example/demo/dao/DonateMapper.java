package com.example.demo.dao;

import com.example.demo.domain.Donate;

public interface DonateMapper {
    int deleteByPrimaryKey(Integer donateId);

    int insert(Donate record);

    int insertSelective(Donate record);

    Donate selectByPrimaryKey(Integer donateId);

    int updateByPrimaryKeySelective(Donate record);

    int updateByPrimaryKey(Donate record);
}