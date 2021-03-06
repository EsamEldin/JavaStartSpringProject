package com.javaSpring.JavaSpring.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;

@Entity
@Table(name="am_banks")
@Getter
public class Banks {

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private long id;
  
  
  private String title;
  
  private String img;
  
  private int status;
  
  @Column(name="deleted_at")
  private Date deletedAt;
  
  @Column(name="created_at")
  private Date createdAt;
  
  @Column(name="updated_at")
  private Date updatedAt;
  
}
