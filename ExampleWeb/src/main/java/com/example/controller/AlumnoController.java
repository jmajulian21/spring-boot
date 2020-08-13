package com.example.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.hateoas.Link;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.model.Alumno;
import com.example.repository.IAlumnoRepo;

@RestController
@RequestMapping("/alumno")
public class AlumnoController {
	@Value("${server.port}")
	int port;
	@Autowired
	private IAlumnoRepo repo;
	
	@GetMapping(path="/all")
	public List<Alumno> getAll() {
		List<Alumno> alumnos = repo.findAll();
		for (Alumno item:alumnos) {
			Link selfLink = Link.of("http://localhost:"+port+"/persona?id="+item.getIdPersona());
			item.add(selfLink);
		}
		return alumnos;
	}
}
