package com.greenstone.service.impl;

import com.greenstone.dao.TopicDao;
import com.greenstone.entity.Topic;
import com.greenstone.service.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TopicServiceImpl implements TopicService {

    private TopicDao topicDao;

    @Autowired
    public TopicServiceImpl(TopicDao topicDao) {
        this.topicDao = topicDao;
    }

    @Override
    public void save(Topic topic) {
        topicDao.save(topic);
    }

    @Override
    public void deleteById(Long id) {
        topicDao.deleteById(id);
    }

    @Override
    public Optional<Topic> findById(Long id) {
        return topicDao.findById(id);
    }

    @Override
    public List<Topic> findAll() {
        return topicDao.findAll();
    }
}