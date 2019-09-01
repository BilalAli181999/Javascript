package org.pucit.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class welcome {

    @RequestMapping(method = RequestMethod.GET, value="/")
    public String welcomePage(ModelMap modelMap){


    //    modelMap.addAttribute("message","Welcome to Spring!!");
        return "form";
    }



    @RequestMapping(method = RequestMethod.GET, value="/t")
    public String test(ModelMap modelMap){


        //    modelMap.addAttribute("message","Welcome to Spring!!");
        return "test";
    }
}
