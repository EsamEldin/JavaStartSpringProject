package com.javaSpring.JavaSpring.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.javaSpring.JavaSpring.entity.Banks;
import com.javaSpring.JavaSpring.services.BanksService;

@RestController
@RequestMapping("/banks")
public class BanksController {
	
	
	@Autowired
	private BanksService banksService;
	
	
	@GetMapping
	public List<Banks> findAll(){
		
		return banksService.findBanks();
		
	}
	
	@RequestMapping(value="/bank/{id}",method=RequestMethod.GET)
	public ResponseEntity<Banks> findOne(@PathVariable("id") String id){
		
		 banksService.findOne(Long.parseLong(id)).toString();
		
		 return ResponseEntity.ok(banksService.findOne(Long.parseLong(id)));
		
	}
	
	
	

}
