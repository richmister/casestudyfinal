package perscholas.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import perscholas.demo.database.dao.UserRepository;
import perscholas.demo.database.entity.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class homeController {
    @Autowired
    UserRepository userRepository;
    @RequestMapping(value={"/", "/home"}, method= RequestMethod.GET)
    public ModelAndView index(HttpServletRequest request, HttpSession session, Authentication auth) throws Exception {
//        System.out.println(auth.getName());

        if(auth != null && auth.isAuthenticated()){
            String fullNames = (String) session.getAttribute("fullnames");
            if(fullNames==null){
                User user = userRepository.findByEmail(auth.getName());
                session.setAttribute("fullnames",user.getFirstName() + " " + user.getLastName());
            }
        }else{
            session.removeAttribute("fullnames");
        }

        ModelAndView response = new ModelAndView();
        response.setViewName("home");


        return response;
    }

}