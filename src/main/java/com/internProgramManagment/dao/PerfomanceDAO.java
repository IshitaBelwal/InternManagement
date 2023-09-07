package com.internProgramManagment.dao;


import com.internProgramManagment.modal.Performance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PerfomanceDAO{

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public List <Performance> getAllPerformance() {
        String sql = "SELECT * FROM performance";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper <>(Performance.class));
    }


    public List <Performance> getPerformanceByinternid(int internid) {
        String sql = "SELECT * FROM performance WHERE internid = ?";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Performance.class), internid);
    }

    public Performance getPerformanceById(int id) {
        String sql = "SELECT * FROM performance WHERE id = ?";
        return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(Performance.class), id);
    }

    public void addPerformance(Performance Performance) {
        String sql = "INSERT INTO performance (internid,batchid,task,completionStatus,perfomanceScore) VALUES (?, ?, ?, ?, ?)";
        jdbcTemplate.update(sql,Performance.getInternId(),Performance.getInternshipBatchid(),Performance.getTask(),Performance.getCompletionStatus(),Performance.getPerfomanceScore());
    }


    public void updatePerformance(Performance Performance) {
        String sql = "UPDATE performance SET internid=?,batchid=?,task=?,completionStatus=?,perfomanceScore=? WHERE id = ?";
        jdbcTemplate.update(sql, Performance.getInternId(),Performance.getInternshipBatchid(),Performance.getTask(),Performance.getCompletionStatus(),Performance.getPerfomanceScore(),Performance.getId());
    }


    public void deletePerformance(int id) {
        String sql = "DELETE FROM performance WHERE id = ?";
        jdbcTemplate.update(sql, id);
    }

}
