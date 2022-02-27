package Team6.RestaurantV2.service;

import Team6.RestaurantV2.mapper.TableMapper;
import Team6.RestaurantV2.domain.Table;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TableService {
    @Autowired
    public TableMapper Table_mapper;

    public List<Table> selectTable() {
        return Table_mapper.selectTable();
    }
}