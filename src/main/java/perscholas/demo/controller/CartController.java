package perscholas.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;



@Controller
public class CartController {
    @RequestMapping(value={ "/cart"}, method= RequestMethod.GET)
    public ModelAndView cart(HttpServletRequest request, HttpSession sessionn) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("cart/cart");


        return response;
    }


  //  @RequestMapping(value={ "/addtocart"}, method= RequestMethod.GET)
   // public String



}