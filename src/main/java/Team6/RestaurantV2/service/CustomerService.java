package Team6.RestaurantV2.service;

import java.util.List;

import Team6.RestaurantV2.domain.Customer;

public interface CustomerService {
	    public boolean join (Customer customer);
	    public void modify (Customer customer);
	    public void withdraw (String oid);
	    public Customer getCustomer (String oid);
	    public List<Customer> selectCustomer();
}
