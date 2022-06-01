package com.example.demo.service;

import com.example.demo.domain.Animal;

import java.util.List;

public interface AnimalService {


    List<Animal> getAnimalByCertainConditions(Animal animal);

    Integer getPageNumByCertainConditions(Animal animal);

    Animal findById(Integer animalId);

    List<Animal> getAnimalsByTime();

    int addAnimal(Animal animal);

    int delAnimalById(Integer id);

    List<Animal> findByFamily(String animalFamily);

    int updateAnimal(Animal animal);
}
