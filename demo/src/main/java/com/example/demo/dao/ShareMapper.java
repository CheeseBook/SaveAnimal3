package com.example.demo.dao;

import com.example.demo.domain.Share;

public interface ShareMapper {
    int deleteByPrimaryKey(Integer shareId);

    int insert(Share record);

    int insertSelective(Share record);

    Share selectByPrimaryKey(Integer shareId);

    int updateByPrimaryKeySelective(Share record);

    int updateByPrimaryKey(Share record);
}