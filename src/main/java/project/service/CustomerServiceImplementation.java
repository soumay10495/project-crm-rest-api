package project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
import project.dao.CustomerDAO;
import project.entity.Customer;

import java.util.List;

@Service
@EnableTransactionManagement
public class CustomerServiceImplementation implements CustomerService {

    @Autowired
    CustomerDAO customerDAO;

    @Transactional
    public List<Customer> getCustomerList() {
        return customerDAO.getCustomerList();
    }

    @Transactional
    public void saveCustomer(Customer customer) {
        customerDAO.saveCustomer(customer);
    }

    @Transactional
    public void removeCustomer(Customer customer) {
        customerDAO.removeCustomer(customer);
    }

    @Transactional
    public Customer getCustomer(int id) {
        return customerDAO.getCustomer(id);
    }
}
