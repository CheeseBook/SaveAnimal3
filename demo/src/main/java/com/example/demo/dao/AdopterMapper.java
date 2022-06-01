package com.example.demo.dao;

import com.example.demo.domain.Adopter;

public interface AdopterMapper {
    int deleteByPrimaryKey(Integer adopterId);

    int insert(Adopter record);

    int insertSelective(Adopter record);

    Adopter selectByPrimaryKey(Integer adopterId);

    int updateByPrimaryKeySelective(Adopter record);

    int updateByPrimaryKey(Adopter record);
}