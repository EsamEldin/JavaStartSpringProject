package com.javaSpring.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaSpring.entity.Banks;
import com.javaSpring.repositories.BankRepository;



@Service
public class BanksService {
	
	
	
	@Autowired
	private BankRepository bankRepository;
	
	
	
	public List<Banks> findBanks() {
		
		return bankRepository.findAll();
		
	}
	
	

}
