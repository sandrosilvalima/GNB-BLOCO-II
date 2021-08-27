package com.helloworld.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping ("/hello")

public class HelloController {
	
	@GetMapping
	public String BSM() {
		return "UTILIZEI MUITO A HABILIDADE DE ATENÇÃO AOS DETALHES"
				+ "\nE A MENTALIDADE DE PERSISTÊNCIA!";
			}
	}


