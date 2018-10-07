package com.spring.service;

import java.util.List;

import com.hibernate.entity.Customer;

public interface CustomerService {

	public List<Customer> getCustomersList();

	public void saveCustomer(Customer customer);

	public Customer getCustomer(int customerId);

	public void deleteCustomer(int customerId);

	public List<Customer> searchCustomers(String theSearchName);
}
