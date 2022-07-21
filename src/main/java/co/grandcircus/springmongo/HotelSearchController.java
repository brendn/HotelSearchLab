package co.grandcircus.springmongo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
public class HotelSearchController {

    @Autowired
    private HotelRepository repository;

    @RequestMapping("/")
    public String home(Model model) {
        // Add each city to a list so we can use it for the dropdown
        List<String> cities = new ArrayList<>();
        repository.findAll().forEach(hotel -> cities.add(hotel.city));
        model.addAttribute("cities", cities.stream().distinct().toList());
        return "home";
    }

    @RequestMapping("/results")
    public String results(Model model) {
        return "results";
    }

    @PostMapping("/")
    public String search(@RequestParam String city, Model model) {
        // Gather each hotel in the specified city
        List<Hotel> list = repository.findAll().stream().filter(hotel -> hotel.city.equals(city)).sorted().toList();
        model.addAttribute("city", city);
        model.addAttribute("hotels", list);
        return "results";
    }

}
