package com.greenstone.controller;

import com.greenstone.entity.Post;
import com.greenstone.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("topic/")
public class PostController {

    private PostService postService;
    private long id;

    @Autowired
    public PostController(PostService postService) {
        this.postService = postService;
    }

    @GetMapping("/information/{id}")
    public String getMessage(Model model, HttpServletRequest request,
                             @PathVariable("id") long postId, Post post) {

        String userRole = SecurityContextHolder.getContext().getAuthentication().getAuthorities().toString();
        String username = SecurityContextHolder.getContext().getAuthentication().getName();

        model.addAttribute("userRole", userRole);
        model.addAttribute("username", username);
        model.addAttribute("postId", postId);
        model.addAttribute("newPost", new Post());
        model.addAttribute("message", postService.findAll());
        this.id = postId;
        return "posts";
    }

    @PostMapping("/information")
    public String saveMessage(@ModelAttribute("user") Post post){

        post.setId(id);
        postService.save(post);
        return "redirect:/information/" + id;
    }
}