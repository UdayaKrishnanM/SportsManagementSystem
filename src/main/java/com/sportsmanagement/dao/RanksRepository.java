package com.sportsmanagement.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.sportsmanagement.model.Ranks;


@Repository
public interface RanksRepository extends JpaRepository<Ranks, Integer>{

}
