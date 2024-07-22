package com.sportsmanagement.controller;

import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sportsmanagement.dao.PlayerRepository;
import com.sportsmanagement.model.Player;
import com.sportsmanagement.model.Ranks;
import com.sportsmanagement.service.PlayerService;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping
public class PlayerController {

    @Autowired
    private PlayerService playerService;
    
    @Autowired
    private PlayerRepository playerRepository;

    public PlayerController(PlayerService playerService) {
    	super();
    	this.playerService = playerService;
    }

	@GetMapping("/addPlayer")
	public String showAddPlayerForm(HttpSession session) {
		if (session.getAttribute("authenticated") == null || !(Boolean) session.getAttribute("authenticated")) {
			return "redirect:/";
		}
		return "addPlayer";
	}

	@PostMapping("/addPlayer")
	public String addPlayer(HttpSession session, @ModelAttribute Player player, RedirectAttributes redirectAttributes) {
		if (session.getAttribute("authenticated") == null || !(Boolean) session.getAttribute("authenticated")) {
			return "redirect:/";
		}
		if(playerRepository.existsById(player.getId())) {
			redirectAttributes.addFlashAttribute("message", "ID already exists");
			return "redirect:/addPlayer";
		} else if(!player.getName().matches("[a-zA-Z ]+")) {
			redirectAttributes.addFlashAttribute("message", "Name must contain only letters");
			return "redirect:/addPlayer";
		} else if(player.getAge()<20 || player.getAge()>45) {
			redirectAttributes.addFlashAttribute("message", "Age must be between 20 and 45");
			return "redirect:/addPlayer";
		} else if(playerRepository.existsById(player.getRanks().getT20_rank())) {
			redirectAttributes.addFlashAttribute("message", "T20 rank already exists");
			return "redirect:/addPlayer";
		} else if(playerRepository.existsById(player.getRanks().getOdi_rank())) {
			redirectAttributes.addFlashAttribute("message", "ODI rank already exists");
			return "redirect:/addPlayer";
		} else if(playerRepository.existsById(player.getRanks().getTest_rank())) {
			redirectAttributes.addFlashAttribute("message", "TEST rank already exists");
			return "redirect:/addPlayer";
		}
		else {
			Ranks ranks = new Ranks();
			ranks.setT20_rank(player.getRanks().getT20_rank());
			ranks.setOdi_rank(player.getRanks().getOdi_rank());
			ranks.setTest_rank(player.getRanks().getTest_rank());
			player.setRanks(ranks);
			playerService.addPlayer(player);
			redirectAttributes.addFlashAttribute("message", "Added Successfully");
			return "redirect:/addPlayer";
		}
	}

	@GetMapping("/listPlayers")
	public ModelAndView listPlayers(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		List<Player> player = playerService.getAllPlayers();
		mv.addObject("players", player);
		mv.setViewName("listPlayers");
		return mv;
	}

	@GetMapping("/deletePlayer")
	public String showDeletePlayerForm(HttpSession session) {
		if (session.getAttribute("authenticated") == null || !(Boolean) session.getAttribute("authenticated")) {
			return "redirect:/";
		}
		return "deletePlayer";
	}

	@PostMapping("/deletePlayer")
	public String deletePlayer(HttpSession session, @RequestParam("id") int id, RedirectAttributes redirectAttributes) {
		if (session.getAttribute("authenticated") == null || !(Boolean) session.getAttribute("authenticated")) {
			return "redirect:/";
		}
		Optional<Player> opt = playerRepository.findById(id);
		if(opt.isPresent()) {
			playerService.deletePlayer(id);
			redirectAttributes.addFlashAttribute("message", "Deleted Successfully");
			return "redirect:/deletePlayer";
		} else {
			redirectAttributes.addFlashAttribute("message", "ID not found");
			return "redirect:/deletePlayer";
		}
	}

	@GetMapping("/pickTopPlayers")
	public String showlistPlayers() {
		return "pickTopPlayers";
	}


	@GetMapping("/getTop11")
	public ModelAndView listPlayer(@RequestParam String value) {
		ModelAndView mv = new ModelAndView();
		List<Player> players = new ArrayList<>();
		if(value!=null && value.equalsIgnoreCase("odi")) {
			players.addAll(playerService.getTopPlayers("ODI", "Batsmen", 5));
			players.addAll(playerService.getTopPlayers("ODI", "WicketKeeper", 1));
			players.addAll(playerService.getTopPlayers("ODI", "AllRounder", 2));
			players.addAll(playerService.getTopPlayers("ODI", "Bowler", 3));
		} else if(value != null && value.equalsIgnoreCase("t20")) {
			players.addAll(playerService.getTopPlayers("T20", "Batsmen", 5));
			players.addAll(playerService.getTopPlayers("T20", "WicketKeeper", 1));
			players.addAll(playerService.getTopPlayers("T20", "AllRounder", 2));
			players.addAll(playerService.getTopPlayers("T20", "Bowler", 3));
		} else if(value != null && value.equalsIgnoreCase("test")) {
			players.addAll(playerService.getTopPlayers("Test", "Batsmen", 5));
			players.addAll(playerService.getTopPlayers("Test", "WicketKeeper", 1));
			players.addAll(playerService.getTopPlayers("Test", "AllRounder", 2));
			players.addAll(playerService.getTopPlayers("Test", "Bowler", 3));
		}
		mv.addObject("players", players);
		mv.setViewName("listTopPlayers");
		return mv;
	}

	@GetMapping("/updatePlayer")
	public String showUpdatePlayerForm(HttpSession session) {
		if (session.getAttribute("authenticated") == null || !(Boolean) session.getAttribute("authenticated")) {
			return "redirect:/";
		}
		return "updatePlayer";
	}

	@PostMapping("/updatePlayer")
	public String updatePlayer(HttpSession session, @RequestParam int id, @RequestParam String type, @RequestParam String value, RedirectAttributes redirectAttributes) {
		if (session.getAttribute("authenticated") == null || !(Boolean) session.getAttribute("authenticated")) {
			return "redirect:/";
		}

		if(!playerService.checkIdExists(id)) {
			redirectAttributes.addFlashAttribute("message", "Player ID not found");
			return "redirect:/updatePlayer";
		}
		if ("age".equalsIgnoreCase(type)) {
			playerService.updatePlayerAge(id, Integer.parseInt(value));
			redirectAttributes.addFlashAttribute("message", "Age was updated");
			return "redirect:/updatePlayer";
		} else if ("department".equalsIgnoreCase(type)) {
			playerService.updatePlayerDepartment(id, value);
			redirectAttributes.addFlashAttribute("message", "Department was updated");
			return "redirect:/updatePlayer";
		} else {
			return "redirect:/updatePlayer";
		}
	}



    
}

