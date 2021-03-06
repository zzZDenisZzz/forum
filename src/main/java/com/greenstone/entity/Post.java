package com.greenstone.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "posts")
public class Post {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column
    private String message;

    @Column(name = "posting_date")
    private Date postingDate;

    @ManyToOne
    @JoinColumn(name = "topic_id" , nullable = false)
    private Topic topic;
}