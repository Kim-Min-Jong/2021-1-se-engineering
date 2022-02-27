package Team6.RestaurantV2.controller;


import Team6.RestaurantV2.service.CustomerServiceImpl;
import Team6.RestaurantV2.domain.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import java.util.List;

@RestController
public class CustomerController {

    @Autowired
    CustomerServiceImpl CustomerServiceImpl;

    @RequestMapping(value = "/customer/select.do")
    public ModelAndView customerList() {

        List<Customer> customerList = CustomerServiceImpl.selectCustomer();
        ModelAndView mav = new ModelAndView("customer/select");
        mav.addObject("customer_list", customerList);
        
        return mav;
    }
    
    @RequestMapping(value="/customer/joinForm.do")
    public String writejoinForm() throws Exception{
        
        return "board/joinForm";
    }
   
    @RequestMapping(value="/customer/join_modify.do")
    public String modify(@ModelAttribute("Customer") Customer customer, Model model) throws Exception{
        
        CustomerServiceImpl.modify(customer);
        
        return "redirect:/customer/select.do";
    }
    
    
}