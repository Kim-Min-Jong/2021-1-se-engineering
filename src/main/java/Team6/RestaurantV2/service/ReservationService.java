package Team6.RestaurantV2.service;


import Team6.RestaurantV2.mapper.ReservationMapper;
import Team6.RestaurantV2.domain.Reservation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ReservationService {
	public boolean join (Reservation reservation);
    public void modify (Reservation reservation);
    public void withdraw (int oid);
    public Reservation getReservation (int oid);
    public List<Reservation> selectReservation();
}