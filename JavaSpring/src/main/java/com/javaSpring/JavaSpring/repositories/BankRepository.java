package com.javaSpring.JavaSpring.repositories;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.javaSpring.JavaSpring.entity.Banks;

@Repository
@Transactional
public interface BankRepository extends JpaRepository<Banks, Long> {

}
