package Team6.RestaurantV2.controller;

import Team6.RestaurantV2.service.ReservationService;
import Team6.RestaurantV2.service.ReservationServiceImpl;
import Team6.RestaurantV2.domain.Reservation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

@RestController
public class ReservationController {

    @Autowired
    ReservationServiceImpl reservationServiceImpl;
    Reservation reservation = new Reservation(); 	
    ArrayList<Integer> reservationModifyList = new ArrayList<Integer>();
    ArrayList<Integer> reservationCancelList = new ArrayList<Integer>();

    
    
    
    @RequestMapping(value = "/reservation")
    public ModelAndView reservation() throws Exception {

        List<Reservation> reservationList = reservationServiceImpl.selectReservation();

        ModelAndView mav_reservation = new ModelAndView();
        mav_reservation.addObject("Reservation_list ", reservationList);
        return mav_reservation;
    }

    @RequestMapping(value = "/RPopUp_reservation", method = RequestMethod.POST)
    public ModelAndView RPopUp_reservation(HttpServletRequest request) throws UnsupportedEncodingException{
    	request.setCharacterEncoding("UTF-8");
        int oid_count = 1;
        
        while(reservationServiceImpl.getReservation(oid_count) !=  null) {
        	oid_count++; 	
        }
        
        reservation.setOid(oid_count);
        reservation.setName((String)request.getParameter("name"));
        reservation.setPhoneNumber((String)request.getParameter("phoneNumber"));
        reservation.setCovers(Integer.parseInt(request.getParameter("covers")));
        reservation.setDate((String)request.getParameter("date"));
        reservation.setArrivalTime((String)request.getParameter("time"));
       
        reservationServiceImpl.insert(reservation);
        ModelAndView mav = new ModelAndView("redirect:/RPopUp_reservation");
        List<Reservation> reservation_List = reservationServiceImpl.selectReservation();
        mav.addObject("reservation_list1", reservation_List);
   	 	mav.setViewName("RPopUp_reservation");
    	return mav;

    }
    
    
    @RequestMapping(value = "/reservationCheck")
    public ModelAndView reservationCheck() throws Exception {

    	
        List<Reservation> reservationList = reservationServiceImpl.selectReservation();

        ModelAndView mav_reservationCheck = new ModelAndView();
        mav_reservationCheck.addObject("ReservationCheck_list", reservationList);
        return mav_reservationCheck;
    }
    
    
    
    @RequestMapping(value = "/RPopUp_reservationCheck", method = RequestMethod.POST)
    public ModelAndView RPopUp_reservationCheck(HttpServletRequest request) throws UnsupportedEncodingException {

    	request.setCharacterEncoding("UTF-8");    	
        int oidForSelection = Integer.parseInt(request.getParameter("oid"));
        Reservation check_reservation =  reservationServiceImpl.getReservation(oidForSelection);
        
    	if((check_reservation) !=  null) {
    		ModelAndView mav = new ModelAndView("redirect:/RPopUp_reservationCheck");
        	mav.addObject("check", check_reservation);
        	mav.setViewName("RPopUp_reservationCheck");
       	 	reservationModifyList.add(oidForSelection);
       	 	reservationCancelList.add(oidForSelection);

        	return mav;
    	}
    	else {
    		System.out.println("Not Found");
    		return null;
    	}
    }
    
    
    @RequestMapping("/reservationModify")
    public ModelAndView reservationModify() {
    	 List<Reservation> reservationList = reservationServiceImpl.selectReservation();

         ModelAndView mav_reservationModify = new ModelAndView();
         mav_reservationModify.addObject("Reservation_list", reservationList);
         return mav_reservationModify;
    }
    
    @RequestMapping(value = "/RPopUp_reservationModify", method = RequestMethod.POST)
    public ModelAndView RPopUp_Modify(HttpServletRequest request) throws UnsupportedEncodingException {

    	request.setCharacterEncoding("UTF-8");    	
    

        if(!reservationModifyList.isEmpty()) {
    		ModelAndView mav = new ModelAndView("redirect:/RPopUp_reservationModify");
    		Reservation modify_reservation =  reservationServiceImpl.getReservation(reservationModifyList.get(0));

            reservation.setOid(modify_reservation.getOid());
    		reservation.setDate((String)request.getParameter("date"));    		
       	    reservation.setArrivalTime((String)request.getParameter("time"));
    		reservation.setCovers(Integer.parseInt(request.getParameter("covers")));

       	    
            reservationServiceImpl.modify(reservation);
            reservationModifyList.remove(0);
            Reservation check_reservation =  reservationServiceImpl.getReservation(modify_reservation.getOid());
        	mav.addObject("modify", check_reservation);
        	mav.setViewName("RPopUp_reservationModify");
        	return mav;
    	}
    	else {
    		System.out.println("Not Found");
    		return null;
    	}

    }
    
    @RequestMapping("/reservationCancel")
    public ModelAndView reservationCancel() {
    	 List<Reservation> reservationList = reservationServiceImpl.selectReservation();

         ModelAndView mav_reservationCancel = new ModelAndView();
         mav_reservationCancel.addObject("Reservation_list", reservationList);
         System.out.println(reservationList.get(0).getDate());
         return mav_reservationCancel;

    }
    
    @RequestMapping(value = "/RPopUp_reservationCancel", method = RequestMethod.POST)
    public ModelAndView RPopUp_Cancel(HttpServletRequest request) throws UnsupportedEncodingException {

    	request.setCharacterEncoding("UTF-8");    	
    

        if(!reservationCancelList.isEmpty()) {
    		ModelAndView mav = new ModelAndView("redirect:/RPopUp_reservationCancel");
    		Reservation cancel_reservation =  reservationServiceImpl.getReservation(reservationCancelList.get(0));

            reservation.setOid(cancel_reservation.getOid());
       	    
            reservationServiceImpl.withdraw(cancel_reservation.getOid());
            reservationCancelList.remove(0);
                        
            List<Reservation> showAllreservation = reservationServiceImpl.selectReservation();
            mav.addObject("cancel123", showAllreservation);
        	mav.setViewName("RPopUp_reservationCancel");
        	return mav;
    	}
    	else {
    		System.out.println("Not Found");
    		return null;
    	}

    }
    
}
