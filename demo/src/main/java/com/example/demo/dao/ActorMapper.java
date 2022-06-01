package com.example.demo.dao;

import com.example.demo.domain.Actor;
import com.example.demo.domain.ActorKey;

public interface ActorMapper {
    int deleteByPrimaryKey(ActorKey key);

    int insert(Actor record);

    int insertSelective(Actor record);

    Actor selectByPrimaryKey(ActorKey key);

    int updateByPrimaryKeySelective(Actor record);

    int updateByPrimaryKey(Actor record);
}