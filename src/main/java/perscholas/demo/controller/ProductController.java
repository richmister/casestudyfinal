package perscholas.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import perscholas.demo.database.dao.ProductRepository;
import perscholas.demo.database.entity.Product;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.time.LocalDate;
import java.util.List;

@Controller
public class ProductController {
    @Autowired
    //above im calling for an object that spring is managing in this case the repository
    ProductRepository productRepo;
    @RequestMapping(value={ "/product"}, method= RequestMethod.GET)
    //public ModelAndView product(HttpServletRequest request, HttpSession session) throws Exception {
    public ModelAndView product(@RequestParam(value = "type" ) String type,HttpServletRequest request){
        System.out.println("type requested is"+type);
        ModelAndView response = new ModelAndView();
        //call the repository method to load the type
    List<Product> varieties= productRepo.findByType(type);
        System.out.println(varieties.size());
        for(Product p:varieties){
            System.out.println(p.getName());
        }
        //below is the string i will use to access the objects/products in the jsp by c library tag
        response.addObject("varieties",varieties);
        response.addObject("date", LocalDate.now().toString());
        request.setAttribute("date", LocalDate.now().toString());
        response.setViewName("product/product");


        return response;
    }

}
