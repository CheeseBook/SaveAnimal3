package com.example.demo.dao;

import com.example.demo.domain.Animal;

import java.util.List;

public interface AnimalMapper {
    List<Animal> getAnimalByCertainConditions(Animal animal);

    Integer getPageNumByCertainConditions(Animal animal);

    Animal findById(Integer animalId);

    List<Animal> findAllByTime();

    int addAnimal(Animal animal);

    int delAnimalById(Integer id);

    List<Animal> findByFamily(String animalFamily);

    int updateAnimal(Animal animal);
}