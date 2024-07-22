package com.sportsmanagement.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sportsmanagement.dao.PlayerRepository;
import com.sportsmanagement.dao.RanksRepository;
import com.sportsmanagement.model.Player;
import com.sportsmanagement.model.Ranks;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class PlayerService {
	
    @Autowired
    private PlayerRepository playerRepository;

    @Autowired
    private RanksRepository ranksRepository;
    
    public Player addPlayer(Player player) {
        Ranks ranks = player.getRanks();
        if (ranks != null) {
        	ranks.setPlayer(player);
        	ranks = ranksRepository.save(ranks);
        }
        player.setRanks(ranks);
        return playerRepository.save(player);
    }


    public boolean deletePlayer(int id) {
    	playerRepository.deleteById(id);
    	if(playerRepository.findById(id).isEmpty()) {
    		return true;
    	}
    	 return false;
    }

    public List<Player> getAllPlayers() {
        return playerRepository.findAll();
    }

    public List<Player> getTopPlayers(String dept, String formatt, int limit) {
		List<Object[]> topData = new ArrayList<>();
    			
		if(dept.equalsIgnoreCase("odi")) {
			topData = playerRepository.getTopODIPlayers(formatt, limit);
		} else if(dept.equalsIgnoreCase("t20")) {
			topData = playerRepository.getTopT20Players(formatt, limit);
		} else if(dept.equalsIgnoreCase("test")) {
			topData = playerRepository.getTopTestPlayers(formatt, limit);
		}
    	
    	List<Player> res = new ArrayList<>();
    	for(Object[] playerData: topData) {
    		int playerId = (int) playerData[0];
    		String playerName = (String) playerData[1];
    		String playerDept = (String) playerData[2];
    		Player player = new Player();
    		player.setId(playerId);
    		player.setName(playerName);
    		player.setDepartment(playerDept);
    		res.add(player);
    	}
    	return res;    			
    }

    public Player updatePlayerDepartment(int id, String department) {
        Player player = playerRepository.findById(id).orElse(null);
        if (player != null) {
            player.setDepartment(department);
            return playerRepository.save(player);
        }
        return null;
    }
    
    public Player updatePlayerAge(int id, int age) {
        Player player = playerRepository.findById(id).orElse(null);
        if (player != null) {
            player.setAge(age);
            return playerRepository.save(player);
        }
        return null;
    }

	public boolean checkIdExists(int id) {
		return playerRepository.existsById(id);
	}
	
}