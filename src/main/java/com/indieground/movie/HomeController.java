package com.indieground.movie;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.indieground.movie.movieInfo.model.MovieInfoVO;
import com.indieground.movie.movieInfo.service.IMovieInfoService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	//마이바티스 테스트를 위한 페이지로 이동
	@Autowired
	private IMovieInfoService service;
	
	@GetMapping(value="/test")
	public String test(Model model){
		model.addAttribute("test", service.test());
		List<MovieInfoVO> vo = service.test();
		
		for(int i = 0 ; i < vo.size(); i++ ){
		       System.out.println(vo.get(i).getMovienm());
		       System.out.println(vo.get(i).getMoviecode());

		}
		
		return "backendtest";
	}
}
