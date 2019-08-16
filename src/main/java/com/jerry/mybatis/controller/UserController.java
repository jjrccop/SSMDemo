package com.jerry.mybatis.controller;

import com.jerry.mybatis.domain.User;
import com.jerry.mybatis.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    private IUserService iUserService;
    public static int id;

    @RequestMapping("insert")
    public ModelAndView insert(String username,String password){
        User user=new User();
        user.setId(id+1);
        user.setPassword(password);
        user.setUsername(username);
        if(iUserService.insert(user)==1) return getList();
        else return error();
    }

    @RequestMapping("change_before")
    public ModelAndView change_before(int id){
        ModelAndView mv=new ModelAndView("change");
        User user=iUserService.select(id);
        mv.addObject("id",user.getId());
        return mv;
    }

    @RequestMapping("change_after")
    public ModelAndView change_after(int id,String username,String password){
        User user=new User();
        user.setId(id);user.setUsername(username);user.setPassword(password);
        if(iUserService.update(user)==1) return getList();
        else return error();
    }

    @RequestMapping("delete")
    public ModelAndView delete(int id){
        if(iUserService.delete(id)==1) return getList();
        else return error();
    }

    @RequestMapping("users")
    public ModelAndView getList(){
        ModelAndView  mv=new ModelAndView("index");
        List<User> list=iUserService.selectAll();
        mv.addObject("user",list);
        id=list.size();
        return mv;
    }

    public ModelAndView error(){
        ModelAndView  mv=new ModelAndView("fail");
        return mv;
    }
}
