package Team6.RestaurantV2.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Team6.RestaurantV2.domain.Queue;
import Team6.RestaurantV2.domain.Table;
import Team6.RestaurantV2.service.QueueService;

@Controller
public class QueueController {
	
	@Autowired
	private QueueService QueueService;
	@RequestMapping("/queue")
	public ModelAndView queueList() throws Exception {
		List<Queue> queueList = QueueService.getQueue();

        ModelAndView mav_queue = new ModelAndView();
        mav_queue.addObject("queue_list", queueList);
        return mav_queue;
	}
}
