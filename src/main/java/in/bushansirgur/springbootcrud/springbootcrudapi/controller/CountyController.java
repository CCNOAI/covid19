package in.bushansirgur.springbootcrud.springbootcrudapi.controller;

import in.bushansirgur.springbootcrud.springbootcrudapi.model.County;
import in.bushansirgur.springbootcrud.springbootcrudapi.service.CountyServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CountyController {

    @Autowired
    CountyServiceImpl countyService;

    @GetMapping("/showCitiesEnding")
    public String findCitiesNameEndsWith(Model model, @RequestParam String name) {

        List<County> counties = (List<County>) countyService.findByNameEndsWith(name);

        model.addAttribute("counties", counties);

        return "showCounties";
    }
}
