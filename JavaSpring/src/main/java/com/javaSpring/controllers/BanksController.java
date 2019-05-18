package com.javaSpring.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.javaSpring.entity.Banks;
import com.javaSpring.services.BanksService;

@RestController
@RequestMapping("/api/v1/banks")
public class BanksController {
	
	
	@Autowired
	private BanksService banksService;
	
	
	@GetMapping
	public List<Banks> findAll(){
		return banksService.findBanks();
	}

}
