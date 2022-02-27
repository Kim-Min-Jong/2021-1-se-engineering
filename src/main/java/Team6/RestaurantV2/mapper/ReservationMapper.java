package Team6.RestaurantV2.mapper;


import java.util.List;

import Team6.RestaurantV2.domain.Customer;
import Team6.RestaurantV2.domain.Reservation;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


@Repository
@Mapper
public interface ReservationMapper {
    public List<Reservation> selectReservation();
    public void insertReservation (Reservation reservation);
    public void updateReservation (Reservation reservation);
    public void subUpdateReservation();
    public void deleteReservation (int oid);
    public Reservation selectOneReservation (int oid);
    
}
