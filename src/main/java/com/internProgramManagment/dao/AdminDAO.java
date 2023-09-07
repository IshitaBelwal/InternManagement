package com.internProgramManagment.dao;

import com.internProgramManagment.modal.Admin;
import com.internProgramManagment.modal.Intern;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AdminDAO {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public List <Intern> getAlladmin() {
        String sql = "SELECT * FROM intern";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper <>(Intern.class));
    }



    public boolean verifyAdminCredentials(String username, String password) {
        String query = "SELECT COUNT(*) FROM admin WHERE username = ? AND password = ?";
        int count = jdbcTemplate.queryForObject(query, Integer.class, username, password);
        return count == 1; // Return true if credentials are valid, false otherwise
    }
}
