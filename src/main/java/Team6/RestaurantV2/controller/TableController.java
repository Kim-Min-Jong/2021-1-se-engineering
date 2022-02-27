package Team6.RestaurantV2.controller;

import Team6.RestaurantV2.service.TableService;
import Team6.RestaurantV2.domain.Table;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
public class TableController {

    @Autowired
    TableService TableService;

    @RequestMapping(value = "/table")
    public ModelAndView test() throws Exception {

        List<Table> tableList = TableService.selectTable();

        ModelAndView mav_table = new ModelAndView();
        mav_table.addObject("table_list", tableList);
        return mav_table;
    }


}