package com.javaSpring.JavaSpring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.javaSpring.JavaSpring.controllers.BanksController;
import com.javaSpring.JavaSpring.services.BanksService;

@SpringBootApplication
public class JavaSpringApplication {

	public static void main(String[] args) {
		SpringApplication.run(JavaSpringApplication.class, args);
		System.out.println("essam");
	}

}
