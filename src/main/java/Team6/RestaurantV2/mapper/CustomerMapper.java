package Team6.RestaurantV2.mapper;

import java.util.List;

import Team6.RestaurantV2.domain.Customer;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


@Repository
@Mapper
public interface CustomerMapper {
    public List<Customer> selectCustomer();
    public void insertCustomer (Customer customer);
    public void updateCustomer (Customer customer);
    public void deleteCustomer (String oid);
    public Customer selectOneCustomer (String oid);

}