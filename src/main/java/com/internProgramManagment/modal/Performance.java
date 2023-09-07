package com.internProgramManagment.modal;

public class Performance{

    private String id;
    private String internshipBatchid;
    private String InternId;
    private String task;
    private String completionStatus;
    private String perfomanceScore;

    public String getId(){
        return id;
    }

    public void setId(String id){
        this.id = id;
    }

    public String getInternshipBatchid(){
        return internshipBatchid;
    }

    public void setInternshipBatchid(String internshipBatchid){
        this.internshipBatchid = internshipBatchid;
    }

    public String getInternId(){
        return InternId;
    }

    public void setInternId(String internId){
        InternId = internId;
    }

    public String getTask(){
        return task;
    }

    public void setTask(String task){
        this.task = task;
    }

    public String getCompletionStatus(){
        return completionStatus;
    }

    public void setCompletionStatus(String completionStatus){
        this.completionStatus = completionStatus;
    }

    public String getPerfomanceScore(){
        return perfomanceScore;
    }

    public void setPerfomanceScore(String perfomanceScore){
        this.perfomanceScore = perfomanceScore;
    }

    @Override
    public String toString(){
        return "Perfomance{" +
                "perfomanceId=" + id +
                ", internshipBatchid=" + internshipBatchid +
                ", InternId=" + InternId +
                ", task='" + task + '\'' +
                ", completionStatus='" + completionStatus + '\'' +
                ", perfomanceScore='" + perfomanceScore + '\'' +
                '}';
    }
}
