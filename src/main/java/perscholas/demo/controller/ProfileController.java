package perscholas.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class ProfileController {
    @RequestMapping(value={ "/profile"}, method= RequestMethod.GET)
    public ModelAndView index(HttpServletRequest request, HttpSession sessionn) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("profile/profile");


        return response;
    }

}