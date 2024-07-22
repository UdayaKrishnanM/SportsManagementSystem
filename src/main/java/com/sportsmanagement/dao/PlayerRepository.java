package com.sportsmanagement.dao;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.sportsmanagement.model.Player;

@Repository
public interface PlayerRepository extends JpaRepository<Player, Integer>{


	@Query(value = "SELECT p.id, p.name, p.department from Player p WHERE p.department= :rolee ORDER BY p.ranks.odi_rank ASC limit :limit")	
	List<Object[]> getTopODIPlayers(@Param("rolee") String rolee,@Param("limit") int limit);

	@Query(value = "SELECT p.id, p.name, p.department from Player p WHERE p.department= :rolee ORDER BY p.ranks.t20_rank ASC limit :limit")	
	List<Object[]> getTopT20Players(@Param("rolee") String rolee,@Param("limit") int limit);

	@Query(value = "SELECT p.id, p.name, p.department from Player p WHERE p.department= :rolee ORDER BY p.ranks.test_rank ASC limit :limit")	
	List<Object[]> getTopTestPlayers(@Param("rolee") String rolee,@Param("limit") int limit);
}