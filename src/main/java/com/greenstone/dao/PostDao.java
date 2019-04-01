package com.greenstone.dao;

import com.greenstone.entity.Post;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PostDao extends JpaRepository<Post,Long> {
}