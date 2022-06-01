package com.example.demo.dao;

import com.example.demo.domain.Apply;
import com.example.demo.domain.ApplyKey;

public interface ApplyMapper {
    int deleteByPrimaryKey(ApplyKey key);

    int insert(Apply record);

    int insertSelective(Apply record);

    Apply selectByPrimaryKey(ApplyKey key);

    int updateByPrimaryKeySelective(Apply record);

    int updateByPrimaryKey(Apply record);
}