package Team6.RestaurantV2.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import Team6.RestaurantV2.service.*;
@RestController

public class mainController {
    private KakaoAPI kakao;

    /*@RequestMapping("/")
    public ModelAndView mainWeb() {
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("index");
    	return mav;

    }*/
   
    @RequestMapping(value = "/login")
    public ModelAndView login() {

   	 ModelAndView mav = new ModelAndView();
        mav.setViewName("login");
        return mav;
    }
    
    @RequestMapping(value="/loginSession")
    public ModelAndView loginSession() {
    	 

    	 ModelAndView mav = new ModelAndView("redirect:/login");
         mav.setViewName("loginSession");
         
         return mav;    
    }
    
    @RequestMapping(value = "/login_process")
    public ModelAndView login_process() {

   	 ModelAndView mav = new ModelAndView();
        mav.setViewName("login_process");
        return mav;
    }
    
    @RequestMapping(value = "/signIn")
    public ModelAndView signIn() {

   	 ModelAndView mav = new ModelAndView();
        mav.setViewName("signIn");
        return mav;
    }
    @RequestMapping(value = "/signIn_process")
    public ModelAndView signInProcess() {

   	 ModelAndView mav = new ModelAndView();
        mav.setViewName("signIn_process");
        return mav;
    }
    /*@RequestMapping(value = "/popUp")
    public ModelAndView popUp() {

   	 ModelAndView mav = new ModelAndView();
        mav.setViewName("popUp");
        return mav;
    }*/
    
    @RequestMapping(value = "/loggined")
    public ModelAndView loggined() {

   	 ModelAndView mav = new ModelAndView();
        mav.setViewName("loggined");
        return mav;
    }
    
    @RequestMapping(value = "/logout")
    public ModelAndView logout() {

   	 ModelAndView mav = new ModelAndView();
        mav.setViewName("logout");
        return mav;
    }
    
    @RequestMapping(value = "/mainWeb")
    public ModelAndView mainWeb() {

   	 ModelAndView mav = new ModelAndView();
        mav.setViewName("mainWeb");
        return mav;
    }
    
    @RequestMapping(value = "/mainWeb-logined_user")
    public ModelAndView mainWeblogineduser() {

   	 ModelAndView mav = new ModelAndView();
        mav.setViewName("mainWeb-logined_user");
        return mav;
    }
    @RequestMapping(value = "/mainWeb-logined")
    public ModelAndView mainWeblogined() {

   	 ModelAndView mav = new ModelAndView();
        mav.setViewName("mainWeb-logined");
        return mav;
    }
    
    @RequestMapping(value = "/walkIn")
    public ModelAndView walkIn() {

   	 ModelAndView mav = new ModelAndView();
        mav.setViewName("walkIn");
        return mav;
    }
    
    @RequestMapping(value = "/walkIn_loggedin_user")
    public ModelAndView walkIn_loggedin_user() {

   	 ModelAndView mav = new ModelAndView();
        mav.setViewName("walkIn_loggedin_user");
        return mav;
    }
    
    @RequestMapping(value = "/walkIn_loggedin")
    public ModelAndView walkInloggedin() {

   	 ModelAndView mav = new ModelAndView();
        mav.setViewName("walkIn_loggedin");
        return mav;
    }
    
    @RequestMapping(value = "/RPopUp_walkIn")
    public ModelAndView RPopUp_walkIn() {

   	 ModelAndView mav = new ModelAndView();
        mav.setViewName("RPopUp_walkIn");
        return mav;
    }
    
    @RequestMapping(value = "/RPopUp_walkIn_loggedin")
    public ModelAndView RPopUp_walkIn_loggedin() {

   	 ModelAndView mav = new ModelAndView();
        mav.setViewName("RPopUp_walkIn_loggedin");
        return mav;
    }
    
}
