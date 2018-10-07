package com.spring.dao;

import java.util.List;

import com.hibernate.entity.Customer;

public interface CustomerDAO {

	
	public List<Customer> getCustomersList();

	public void saveCustomer(Customer customer);

	public Customer getCustomer(int customerId);

	public void deleteCustomer(int customerId);

	public List<Customer> searchCustomers(String theSearchName);
}
