package com.greenstone.dao;

import com.greenstone.entity.Topics;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TopicsDao extends JpaRepository<Topics,Long> {
}
