package com.internProgramManagment.dao;

import com.internProgramManagment.modal.Intern;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class InternDAO{
/*CREATE TABLE `intern` (
 `id` int(10) unsigned NOT NULL auto_increment,
 `name` varchar(45) NOT NULL,
 `code` varchar(45) NOT NULL,
 `course` varchar(45) NOT NULL,
 `dob` varchar(45) NOT NULL,
 `gender` varchar(45) NOT NULL,
 `number` varchar(45) NOT NULL,
 `batchid` varchar(45) NOT NULL,
 `address` varchar(45) NOT NULL,
 `description` varchar(45) NOT NULL,
 PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;*/
    @Autowired
    private JdbcTemplate jdbcTemplate;

    public List <Intern> getAllInterns() {
        String sql = "SELECT * FROM intern";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper <>(Intern.class));
    }

  
    public Intern getInternById(int id) {
        String sql = "SELECT * FROM intern WHERE id = ?";
        return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(Intern.class), id);
    }


    public void addIntern(Intern intern) {
        String sql = "INSERT INTO intern (name, code,course,dob,gender,number,batchid,address,description) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        jdbcTemplate.update(sql, intern.getName(), intern.getCode(),intern.getCourse(),intern.getDob(),intern.getGender(),intern.getNumber(),intern.getBatchid(),intern.getAddress(),intern.getDescription());
    }


    public void updateIntern(Intern intern) {
        String sql = "UPDATE intern SET name=?, code = ?,course=?,dob= ?,gender= ?,number= ?,batchid= ?,address= ?,description= ? WHERE id = ?";
        jdbcTemplate.update(sql, intern.getName(), intern.getCode(),intern.getCourse(),intern.getDob(),intern.getGender(),intern.getNumber(),intern.getBatchid(),intern.getAddress(),intern.getDescription(),intern.getId());
    }


    public void deleteIntern(int id) {
        String sql = "DELETE FROM intern WHERE id = ?";
        jdbcTemplate.update(sql, id);
    }

    public List <Intern> getInternByBatchId(int id) {
        String sql = "SELECT * FROM intern WHERE  batchid= ?";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper <>(Intern.class),id);
    }

    public List <Intern> getInternByBatchName(String batchName) {
        String sql = "SELECT * FROM intern WHERE  batchid= ?";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper <>(Intern.class),batchName);
    }

    public int allInternCount() {
        String sql = "select count(*) FROM intern";
        return jdbcTemplate.queryForObject(sql,Integer.class);
    }
}
