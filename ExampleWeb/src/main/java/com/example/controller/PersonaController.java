package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.model.Persona;
import com.example.repository.IPersonaRepo;

@RestController
@RequestMapping("/persona")
public class PersonaController {
	
	@Autowired
	private IPersonaRepo repo;
	
	@GetMapping(path="/all")
	public List<Persona> getAll() {
		return repo.findAll();
	}
	
	@GetMapping
	public Persona getById(@RequestParam Integer id) {
		return repo.getOne(id);
	}
}
