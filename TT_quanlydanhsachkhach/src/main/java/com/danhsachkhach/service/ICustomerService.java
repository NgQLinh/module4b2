package com.danhsachkhach.service;

import com.danhsachkhach.model.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> findAll();

    Customer findById(Long id);

    void save(Customer customer);
}