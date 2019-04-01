package com.greenstone.service.impl;

import com.greenstone.dao.PostDao;
import com.greenstone.entity.Post;
import com.greenstone.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PostServiceImpl implements PostService {

    private PostDao postDao;

    @Autowired
    public PostServiceImpl(PostDao postDao) {
        this.postDao = postDao;
    }

    @Override
    public void save(Post post) {
        postDao.save(post);
    }

    @Override
    public void deleteById(Long id) {
        postDao.deleteById(id);
    }

    @Override
    public List<Post> findAll() {
        return postDao.findAll();
    }
}