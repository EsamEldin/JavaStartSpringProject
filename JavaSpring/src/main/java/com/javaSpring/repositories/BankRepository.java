package com.javaSpring.repositories;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.javaSpring.entity.Banks;

@Repository
@Transactional
public interface BankRepository extends JpaRepository<Banks, Long> {

}
