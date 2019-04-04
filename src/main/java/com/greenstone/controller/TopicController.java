package com.greenstone.controller;

import com.greenstone.service.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/topic")
public class TopicController {

    @Autowired
    private TopicService topicService;

    @GetMapping("/information")
    public String getInfoTopic(Model model){
        model.addAttribute("topic", topicService.findAll());
        return "info";
    }
}