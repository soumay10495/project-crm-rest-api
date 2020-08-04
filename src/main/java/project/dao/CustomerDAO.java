package project.dao;

import project.entity.Customer;

import java.util.List;

public interface CustomerDAO {
    List<Customer> getCustomerList();

    void saveCustomer(Customer customer);

    void removeCustomer(Customer customer);

    Customer getCustomer(int id);
}
