package Team6.RestaurantV2.service;

import java.util.List;

import Team6.RestaurantV2.domain.Queue;

public interface QueueService {
	public List<Queue> getQueue() throws Exception;
	public void insertQueue (Queue queue);
    public void deleteQueue (int reservation_oid);
}
