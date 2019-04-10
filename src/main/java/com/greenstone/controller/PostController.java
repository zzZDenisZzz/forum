package com.greenstone.controller;

import com.greenstone.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("topic/")
public class PostController {

    @Autowired
    private PostService postService;

    @GetMapping("/information/{id}")
    public String getMassage(Model model, HttpServletRequest request,
                             @PathVariable("id") int postId) {

        String userRole = SecurityContextHolder.getContext().getAuthentication().getAuthorities().toString();
        String username = SecurityContextHolder.getContext().getAuthentication().getName();

        model.addAttribute("userRole", userRole);
        model.addAttribute("username", username);
        model.addAttribute("message", postService.findAll());
        return "posts";
    }
}
