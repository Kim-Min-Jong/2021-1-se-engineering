package Team6.RestaurantV2.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import Team6.RestaurantV2.domain.Customer;
import Team6.RestaurantV2.domain.Queue;

@Repository
@Mapper
public interface QueueMapper {
	public List<Queue> getQueue() throws Exception;
	public void insertQueue (Queue queue);
    public void deleteQueue (int reservation_oid);
}
