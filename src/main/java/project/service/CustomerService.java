package project.service;

import project.entity.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> getCustomerList();

    void saveCustomer(Customer customer);

    void removeCustomer(Customer customer);

    Customer getCustomer(int id);
}
