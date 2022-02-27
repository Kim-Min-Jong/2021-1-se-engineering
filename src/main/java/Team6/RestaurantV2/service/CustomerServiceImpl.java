package Team6.RestaurantV2.service;

import Team6.RestaurantV2.mapper.CustomerMapper;
import Team6.RestaurantV2.domain.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerServiceImpl {
    @Autowired
    public CustomerMapper Customer_mapper;

    public boolean join (Customer customer) {
        // TODO Auto-generated method stub
        if (Customer_mapper.selectOneCustomer(customer.getOid()) == null) {
            Customer_mapper.insertCustomer(customer);
            return true;
        }
        return false;
    }
 
    public void modify(Customer customer) {
        // TODO Auto-generated method stub
        Customer_mapper.updateCustomer(customer);
    }
 
    public void withdraw(String oid) {
        // TODO Auto-generated method stub
        Customer_mapper.deleteCustomer(oid);
    }
 
    public Customer getCustomer(String oid) {
        // TODO Auto-generated method stub
        return Customer_mapper.selectOneCustomer(oid);
    }
 
    
    public List<Customer> selectCustomer() {
        return Customer_mapper.selectCustomer();
    }
}