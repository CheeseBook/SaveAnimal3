package com.example.demo.service.Impl;

import com.example.demo.dao.AnimalMapper;
import com.example.demo.domain.Animal;
import com.example.demo.service.AnimalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class AnimalServiceImpl implements AnimalService {
    @Resource
    private AnimalMapper animalMapper;


    @Override
    public List<Animal> getAnimalByCertainConditions(Animal animal) {
        return animalMapper.getAnimalByCertainConditions(animal);
    }

    @Override
    public Integer getPageNumByCertainConditions(Animal animal) {
        return animalMapper.getPageNumByCertainConditions(animal) / 8 + 1;
    }

    @Override
    public Animal findById(Integer animalId) {
        return animalMapper.findById(animalId);
    }

    @Override
    public List<Animal> getAnimalsByTime() {
        return animalMapper.findAllByTime();
    }

    @Override
    public int addAnimal(Animal animal) {
        return animalMapper.addAnimal(animal);
    }

    @Override
    public int delAnimalById(Integer id) {
        return animalMapper.delAnimalById(id);
    }

    @Override
    public List<Animal> findByFamily(String animalFamily) {
        return animalMapper.findByFamily(animalFamily);
    }

    @Override
    public int updateAnimal(Animal animal) {
        return animalMapper.updateAnimal(animal);
    }
}
