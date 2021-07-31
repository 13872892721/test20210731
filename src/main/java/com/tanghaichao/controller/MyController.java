package com.tanghaichao.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class MyController {

    @RequestMapping(value = "some.do")
    public ModelAndView doSome(String name,Integer age){
        System.out.println("MyController的doSome方法执行了");
        ModelAndView mad = new ModelAndView();
        mad.addObject("msg","欢迎使用springmvc开发");
        mad.addObject("fun","doSome方法执行了");
        mad.setViewName("show");
        return mad;
    }
}
