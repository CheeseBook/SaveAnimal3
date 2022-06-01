package com.example.demo.controller;

import com.example.demo.domain.Animal;
import com.example.demo.service.AnimalService;
import com.example.demo.util.Message;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/animal/")
public class AnimalController {
    @Autowired
    private AnimalService animalService;

    /**
     * 根据特定条件获取记录页数
     * @param animal 特定条件
     * @return 总页数
     */
    @RequestMapping("pageNum.action")
    @ResponseBody
    public Integer getPageNumByCertainConditions(Animal animal) {
        return animalService.getPageNumByCertainConditions(animal);
    }

    /**
     * 获取符合条件的动物信息
     * @param pn 页码
     * @param animal 特定条件
     * @return 提示信息和动物信息集合
     */
    @RequestMapping("certain.action")
    @ResponseBody
    public Message getAnimalByCertainConditions(Integer pn, Animal animal) {
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn,8);
        List<Animal> animals = animalService.getAnimalByCertainConditions(animal);
        // startPage后面紧跟的这个查询就是一个分页查询
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page=new PageInfo(animals,2);
        return Message.success().add("pageInfo",page);
    }

    /**
     * 查询指定动物类别的动物信息
     * @param pn 页码
     * @param animalFamily 动物类别
     * @return 提示信息和动物信息集合
     */
    @RequestMapping("findByFamily.action")
    @ResponseBody
    public Message findByFamily(Integer pn, String animalFamily) {
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn,4);
        if ("全部".equals(animalFamily)) {
            animalFamily = "";
        }
        List<Animal> animals = animalService.findByFamily(animalFamily);
        // startPage后面紧跟的这个查询就是一个分页查询
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page=new PageInfo(animals,3);
        return Message.success().add("pageInfo",page);
    }

    /**
     * 查找特定id的动物
     * @param animalId 动物id
     */
    @RequestMapping("getById.action")
    @ResponseBody
    public Message getById(Integer animalId) {
        Animal animal = animalService.findById(animalId);
        if (animal != null) {
            return Message.success().add("animal", animal);
        } else {
            return Message.fail();
        }
    }

    /**
     * 查找指定id的动物，已列表形式返回
     * @param animalId 动物id
     */
    @RequestMapping("getByIdList.action")
    @ResponseBody
    public Message getByIdList(Integer animalId) {
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(1,4);
        List<Animal> animals = new ArrayList<>();
        Animal animal = animalService.findById(animalId);
        if (animal == null) {
            return Message.fail();
        }
        animals.add(animal);
        // startPage后面紧跟的这个查询就是一个分页查询
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page=new PageInfo(animals,2);
        return Message.success().add("pageInfo",page);
    }

    /**
     * 查找全部动物信息，已入库时间的降序排列
     * @param pn 页码
     */
    @RequestMapping("animalsTime.action")
    @ResponseBody
    public Message getAnimalByTime(Integer pn) {
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn,4);
        List<Animal> animals = animalService.getAnimalsByTime();
        // startPage后面紧跟的这个查询就是一个分页查询
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page=new PageInfo(animals,3);
        return Message.success().add("pageInfo",page);
    }

    /**
     * 创建动物信息
     * @param animal 动物信息
     * @param file 动物图片
     * @param request 请求对象
     */
    @RequestMapping(value = "create.action")
    @ResponseBody
    public Message createAnimal(Animal animal, @RequestParam(value = "pic") MultipartFile file, HttpServletRequest request) throws IOException {
        String fileName = uploadPic(file);
        animal.setAnimalPic("/catPic/" + fileName);
        int i = animalService.addAnimal(animal);
        if(i>0){
            return Message.success();
        }else{
            return Message.fail();
        }
    }

    @RequestMapping(value = "update.action")
    @ResponseBody
    public Message updateAnimal(Animal animal, @RequestParam(value = "pic") MultipartFile file, HttpServletRequest request) throws IOException {
        // 如果没有传文件
        if (file.getSize() == 0) {
            animal.setAnimalPic("");
        } else {
            // 删除原来的图片
            String delPath = "C:/Users/admin/Pictures" + animal.getAnimalPic();
//            String delPath = "/C:/Users/admin/Pictures" + animal.getAnimalPic();
            File delFile = new File(delPath);
            if (delFile.exists()) {
                delFile.delete();
            }
            // 上传图片
            String fileName = uploadPic(file);
            animal.setAnimalPic("/catPic/" + fileName);
        }

        int i = animalService.updateAnimal(animal);
        if (i > 0) {
            return Message.success();
        } else {
            return Message.fail();
        }
    }

    /**
     * 删除指定id的动物信息
     * @param id 动物id
     */
    @RequestMapping("deleteById.action")
    @ResponseBody
    public Message delArticle(Integer id){
        int i = animalService.delAnimalById(id);
        System.out.println(i);
        if(i>0){
            return Message.success();
        }else{
            return Message.fail();
        }
    }

    /**
     * 上传图片
     * @param file 上传的图片
     * @return 图片的名字
     */
    public String uploadPic(MultipartFile file) throws IOException {
        // 上传的路径
//        String path = "/C:/Users/admin/Pictures/catPic/";
        String path = "C:/Users/admin/Pictures/catPic/";
        String fileName =  UUID.randomUUID() + ".jpg";
        File dir = new File(path,fileName);
        // 如果文件存在则创建
        if(!dir.exists()){
            dir.mkdirs();
        }
        //MultipartFile自带的解析方法
        file.transferTo(dir);
        return fileName;
    }
}
