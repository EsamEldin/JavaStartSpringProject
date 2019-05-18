package com.javaSpring.JavaSpring.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.javaSpring.JavaSpring.entity.Banks;
import com.javaSpring.JavaSpring.repositories.BankRepository;



@Service
public class BanksService {
	
	
	
	@Autowired
	private BankRepository bankRepository;
	
	
	
	public List<Banks> findBanks() {
		
		return bankRepository.findAll();
		
	}
	
	public Banks findOne(long id) {
		
		Optional<Banks> bank=bankRepository.findById(id);
		
		return bank.get();
		
	}
	
	

}
