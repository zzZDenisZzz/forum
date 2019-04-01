package com.greenstone.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "topics")
public class Topic {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column
    private String theme;

    @Column(name = "topic_date")
    private Date topicDate;

    @OneToMany(mappedBy = "topic")
    private Set<Post> posts;
}