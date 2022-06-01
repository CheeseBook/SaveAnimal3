package com.example.demo.dao;

import com.example.demo.domain.Adoption;

public interface AdoptionMapper {
    int deleteByPrimaryKey(Integer adoptionId);

    int insert(Adoption record);

    int insertSelective(Adoption record);

    Adoption selectByPrimaryKey(Integer adoptionId);

    int updateByPrimaryKeySelective(Adoption record);

    int updateByPrimaryKey(Adoption record);
}