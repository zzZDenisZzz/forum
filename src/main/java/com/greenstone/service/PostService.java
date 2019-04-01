package com.greenstone.service;

import com.greenstone.entity.Post;

import java.util.List;

public interface PostService {
    void save(Post post);

    void deleteById(Long id);

    List<Post> findAll();

}
