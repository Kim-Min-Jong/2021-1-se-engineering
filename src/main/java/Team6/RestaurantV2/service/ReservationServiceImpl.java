package Team6.RestaurantV2.service;

import Team6.RestaurantV2.mapper.CustomerMapper;
import Team6.RestaurantV2.mapper.ReservationMapper;
import Team6.RestaurantV2.domain.Reservation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReservationServiceImpl {
    @Autowired
    private ReservationMapper  Reservation_mapper;
    private Reservation reservation; 
    
    public void insert(Reservation reservation) {
        // TODO Auto-generated method stub
    	Reservation_mapper.insertReservation(reservation);
    }
 
    public void modify(Reservation Reservation) {
        // TODO Auto-generated method stub
    	Reservation_mapper.updateReservation(Reservation);
    }
    
    public void withdraw(int oid) {
        // TODO Auto-generated method stub
    	Reservation_mapper.deleteReservation(oid);
    }
 
    public Reservation getReservation(int oid) {
        // TODO Auto-generated method stub
        return Reservation_mapper.selectOneReservation(oid);
    }
 
    
    public List<Reservation> selectReservation() {
        return Reservation_mapper.selectReservation();
    }
}
