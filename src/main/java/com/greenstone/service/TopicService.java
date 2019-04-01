package com.greenstone.service;

import com.greenstone.entity.Topic;

import java.util.List;
import java.util.Optional;

public interface TopicService {
    void save(Topic topic);

    void deleteById(Long id);

    Optional<Topic> findById(Long id);

    List<Topic> findAll();
}
