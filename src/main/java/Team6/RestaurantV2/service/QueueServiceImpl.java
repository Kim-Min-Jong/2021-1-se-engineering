package Team6.RestaurantV2.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Team6.RestaurantV2.domain.Queue;
import Team6.RestaurantV2.mapper.QueueMapper;

@Service
public class QueueServiceImpl implements QueueService{
	
	@Autowired
	private QueueMapper queueMapper;
	
	@Override
	public List<Queue> getQueue() throws Exception  {
		// TODO Auto-generated method stub
		return queueMapper.getQueue();
	}

	@Override
	public void insertQueue(Queue queue) {
		// TODO Auto-generated method stub
		queueMapper.insertQueue(queue);
	}


	@Override
	public void deleteQueue(int reservation_oid) {
		// TODO Auto-generated method stub
		queueMapper.deleteQueue(reservation_oid);
	}

}
