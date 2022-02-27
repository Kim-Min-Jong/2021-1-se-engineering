package Team6.RestaurantV2.mapper;

import java.util.List;

import Team6.RestaurantV2.domain.Table;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


@Repository
@Mapper
public interface TableMapper {
    List<Table> selectTable();
}