package com.internProgramManagment.dao;
import com.internProgramManagment.modal.InternshipBatch;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class InternshipBatchDAO{

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public List <InternshipBatch> getAllBatch() {
        String sql = "SELECT * FROM batch";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper <>(InternshipBatch.class));
    }


    public InternshipBatch getBatchById(int id) {
        String sql = "SELECT * FROM batch WHERE id = ?";
        return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(InternshipBatch.class), id);
    }


    public void addBatch(InternshipBatch internshipBatch) {
        String sql = "INSERT INTO batch (code,category,name,start_date,end_date) VALUES (?, ?, ?, ?, ?)";
        jdbcTemplate.update(sql,internshipBatch.getCode(),internshipBatch.getCategory(),internshipBatch.getName(),internshipBatch.getStartDate(),internshipBatch.getEndDate());
    }


    public void updateBatch(InternshipBatch internshipBatch) {
        String sql = "UPDATE batch SET code=?,category=?,name=?,start_date=?,end_date=? WHERE id = ?";
        jdbcTemplate.update(sql, internshipBatch.getCode(),internshipBatch.getCategory(),internshipBatch.getName(),internshipBatch.getStartDate(),internshipBatch.getEndDate(),internshipBatch.getId());
    }


    public void deleteBatch(int id) {
        String sql = "DELETE FROM batch WHERE id = ?";
        jdbcTemplate.update(sql, id);
    }

    public int allBatchCount() {
        String sql = "select count(*) FROM batch";
        return jdbcTemplate.queryForObject(sql,Integer.class);
    }

}
