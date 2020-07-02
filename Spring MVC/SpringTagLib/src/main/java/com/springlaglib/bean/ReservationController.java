package com.springlaglib.bean;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/reservation")
@Controller
public class ReservationController {
	@RequestMapping("/bookingForm")
	public String bookingFrom(Model model) {

		Reservation reservation = new Reservation();
		model.addAttribute("reservation", reservation);
		return "reservation-page";
	}

	@RequestMapping("/submitForm")
	public String submitForm(@ModelAttribute("reservation") Reservation reservation) {
		return "confirmation-page";
	}

}
