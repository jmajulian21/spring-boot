package com.example.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.model.Alumno;

public interface IAlumnoRepo extends JpaRepository<Alumno, Integer>{

}
