package com.internProgramManagment.modal;

public class Intern{

    private int id;
    private String name;
    private String code;
    private String course;
    private String dob;
    private String gender;
    private String number;
    private String description;
    private String address;
    private String batchid;

    public int getId(){
        return id;
    }

    public void setId(int id){
        this.id = id;
    }

    public String getName(){
        return name;
    }

    public void setName(String name){
        this.name = name;
    }

    public String getCode(){
        return code;
    }

    public void setCode(String code){
        this.code = code;
    }

    public String getCourse(){
        return course;
    }

    public void setCourse(String course){
        this.course = course;
    }

    public String getDob(){
        return dob;
    }

    public void setDob(String dob){
        this.dob = dob;
    }

    public String getGender(){
        return gender;
    }

    public void setGender(String gender){
        this.gender = gender;
    }

    public String getNumber(){
        return number;
    }

    public void setNumber(String number){
        this.number = number;
    }

    public String getDescription(){
        return description;
    }

    public void setDescription(String description){
        this.description = description;
    }

    public String getAddress(){
        return address;
    }

    public void setAddress(String address){
        this.address = address;
    }

    public String getBatchid(){
        return batchid;
    }

    public void setBatchid(String batchid){
        this.batchid = batchid;
    }

    @Override
    public String toString(){
        return "Intern{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", code='" + code + '\'' +
                ", course='" + course + '\'' +
                ", DOB=" + dob +
                ", gender='" + gender + '\'' +
                ", mobileNo='" + number + '\'' +
                ", desc='" + description + '\'' +
                ", address='" + address + '\'' +
                ", batchId=" + batchid +
                '}';
    }
}
