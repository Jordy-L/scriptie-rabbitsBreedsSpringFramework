package org.libbrechtjordy.rabbitsbreedsspring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import org.libbrechtjordy.rabbitsbreedsspring.dao.RabbitsBreedDao;
import org.libbrechtjordy.rabbitsbreedsspring.entity.RabbitsBreed;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author JordyL
 */
@Controller
public class RabbitsBreedController {

    @Autowired 
    private RabbitsBreedDao rabbitBreedRepository; 
    
    @RequestMapping(value={"/index", "/rabbitsBreedsOverview"}, method=RequestMethod.GET) 
    public String rabbitsBreedsOverviewGet(HttpServletRequest request, HttpServletResponse response, Model model)
    {
        model.addAttribute("rabbitsBreeds", rabbitBreedRepository.findAll());
        return "rabbitsBreedsOverview";
    }
    
    @RequestMapping(value="/viewRabbitsBreed/{id}", method=RequestMethod.GET)
    public String viewRabbitsBreedGet(@PathVariable("id") Long id, Model model){
        model.addAttribute("rabbitsBreed", rabbitBreedRepository.get(id));
        return "viewRabbitsBreed";         
    }
    
    @RequestMapping(value="/createRabbitsBreed", method=RequestMethod.GET)
    public String createRabbitsBreedGet(Model model){
        model.addAttribute("rabbitsBreed", new RabbitsBreed());
        return "createRabbitsBreed";         
    }
    
    @RequestMapping(value="/createRabbitsBreed", method=RequestMethod.POST)
    public String createRabbitsBreedPost(@Valid RabbitsBreed rabbitsBreed, BindingResult bindingResult, Model model){
        if(bindingResult.hasErrors()){
            return "createRabbitsBreed"; 
        }
        rabbitBreedRepository.insert(rabbitsBreed);
        return "redirect:/rabbitsBreedsOverview.htm"; 
    }
    
    @RequestMapping(value="/editRabbitsBreed/{id}", method=RequestMethod.GET)
    public String editRabbitsBreedGet(@PathVariable("id") Long id, Model model){
        model.addAttribute("rabbitsBreed", rabbitBreedRepository.get(id));
        return "editRabbitsBreed";         
    }
    
    @RequestMapping(value="/editRabbitsBreed", method=RequestMethod.POST)
    public String editRabbitsBreedPost(@Valid RabbitsBreed rabbitsBreed, BindingResult bindingResult, Model model){
        if(bindingResult.hasErrors()){
            return "editRabbitsBreed"; 
        }
        rabbitBreedRepository.update(rabbitsBreed);
        return "redirect:/rabbitsBreedsOverview.htm"; 
    }
    
    @RequestMapping(value="/deleteRabbitsBreed/{id}", method=RequestMethod.GET)
    public String editRabbitsBreedPost(@PathVariable("id") Long id, Model model){
        rabbitBreedRepository.delete(rabbitBreedRepository.get(id));
        return "redirect:/rabbitsBreedsOverview.htm"; 
    }
 
}
