package com.greenstone.dao;

import com.greenstone.entity.Topic;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TopicDao extends JpaRepository<Topic,Long> {
}