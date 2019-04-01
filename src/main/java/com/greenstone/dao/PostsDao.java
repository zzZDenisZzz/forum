package com.greenstone.dao;

import com.greenstone.entity.Posts;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PostsDao extends JpaRepository<Posts,Long> {
}
