package com.example.demo.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.sun.istack.NotNull;
import org.hibernate.annotations.Formula;
import org.hibernate.annotations.Generated;
import org.hibernate.annotations.GenerationTime;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="results")
public class Result implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long resultId;

    @Column
    @NotNull
    private String dname;

    @Column
    @NotNull
    private String session;
    @Column
    @NotNull
    private String cclass;

    @Column
    @NotNull
    private int sem;

    @Column
    @NotNull
    private String cname;

    @Column
    @NotNull
    private String tname;

    @Column
    @NotNull
    private int totallec;

    @Column
    @NotNull
    private int lecattended;

    @Column
    @NotNull
    private int ques1;

    @Column
    @NotNull
    private int ques2;
    @Column
    @NotNull
    private int ques3;
    @Column
    @NotNull
    private int ques4;
    @Column
    @NotNull
    private int ques5;
    @Column
    @NotNull
    private int ques6;
    @Column
    @NotNull
    private int ques7;
    @Column
    @NotNull
    private int ques8;
    @Column
    @NotNull
    private int ques9;
    @Column
    @NotNull
    private int ques10;
    @Column
    @NotNull
    private int ques11;
    @Column
    @NotNull
    private int ques12;
    @Column
    @NotNull
    private int ques13;
    @Column
    @NotNull
    private int ques14;
    @Column
    @NotNull
    private int ques15;
    @Column
    @NotNull
    private int ques16;
    @Column
    @NotNull
    private int ques17;
    @Column
    @NotNull
    private int ques18;
    @Column
    @NotNull
    private int ques19;
    @Column
    @NotNull
    private int ques20;
    @Column
    @NotNull
    private int ques21;
    @Column
    @NotNull
    private int ques22;
    @Column
    @NotNull
    private int ques23;
    @Column
    @NotNull
    private int ques24;
    @Column
    @NotNull
    private int ques25;

    @Formula("(ques1+ques2+ques3+ques4+ques5+ques6+ques7+ques8+ques9+ques10+ques11+ques12+ques13+ques14+ques15+ques16+ques17+ques18+ques19+ques20+ques21+ques22+ques23+ques24+ques25)/25")
    private float average;

//    @JsonIgnore
//    @ManyToOne(fetch = FetchType.LAZY, optional = false)
//    @JoinColumn(name = "course_id" ,nullable = false)
//    private Course course;


    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "user_id",nullable = false)
    private User user;

    public Result(){

    }

    public Result(String dname, String session, String cclass, int sem, String cname, String tname, int totallec, int lecattended, int ques1, int ques2, int ques3, int ques4, int ques5, int ques6, int ques7, int ques8, int ques9, int ques10, int ques11, int ques12, int ques13, int ques14, int ques15, int ques16, int ques17, int ques18, int ques19, int ques20, int ques21, int ques22, int ques23, int ques24, int ques25,User user) {
        this.dname = dname;
        this.session = session;
        this.cclass = cclass;
        this.sem = sem;
        this.cname = cname;
        this.tname = tname;
        this.totallec = totallec;
        this.lecattended = lecattended;
        this.ques1 = ques1;
        this.ques2 = ques2;
        this.ques3 = ques3;
        this.ques4 = ques4;
        this.ques5 = ques5;
        this.ques6 = ques6;
        this.ques7 = ques7;
        this.ques8 = ques8;
        this.ques9 = ques9;
        this.ques10 = ques10;
        this.ques11 = ques11;
        this.ques12 = ques12;
        this.ques13 = ques13;
        this.ques14 = ques14;
        this.ques15 = ques15;
        this.ques16 = ques16;
        this.ques17 = ques17;
        this.ques18 = ques18;
        this.ques19 = ques19;
        this.ques20 = ques20;
        this.ques21 = ques21;
        this.ques22 = ques22;
        this.ques23 = ques23;
        this.ques24 = ques24;
        this.ques25 = ques25;
        this.user = user;
    }

    public long getResultId() {
        return resultId;
    }

    public void setResultId(long result_id) {
        this.resultId = result_id;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname;
    }

    public String getSession() {
        return session;
    }

    public void setSession(String session) {
        this.session = session;
    }

    public String getCclass() {
        return cclass;
    }

    public void setCclass(String cclass) {
        this.cclass = cclass;
    }

    public int getSem() {
        return sem;
    }

    public void setSem(int sem) {
        this.sem = sem;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public int getTotallec() {
        return totallec;
    }

    public void setTotallec(int totallec) {
        this.totallec = totallec;
    }

    public int getLecattended() {
        return lecattended;
    }

    public void setLecattended(int lecattended) {
        this.lecattended = lecattended;
    }

    public int getQues1() {
        return ques1;
    }

    public void setQues1(int ques1) {
        this.ques1 = ques1;
    }

    public int getQues2() {
        return ques2;
    }

    public void setQues2(int ques2) {
        this.ques2 = ques2;
    }

    public int getQues3() {
        return ques3;
    }

    public void setQues3(int ques3) {
        this.ques3 = ques3;
    }

    public int getQues4() {
        return ques4;
    }

    public void setQues4(int ques4) {
        this.ques4 = ques4;
    }

    public int getQues5() {
        return ques5;
    }

    public void setQues5(int ques5) {
        this.ques5 = ques5;
    }

    public int getQues6() {
        return ques6;
    }

    public void setQues6(int ques6) {
        this.ques6 = ques6;
    }

    public int getQues7() {
        return ques7;
    }

    public void setQues7(int ques7) {
        this.ques7 = ques7;
    }

    public int getQues8() {
        return ques8;
    }

    public void setQues8(int ques8) {
        this.ques8 = ques8;
    }

    public int getQues9() {
        return ques9;
    }

    public void setQues9(int ques9) {
        this.ques9 = ques9;
    }

    public int getQues10() {
        return ques10;
    }

    public void setQues10(int ques10) {
        this.ques10 = ques10;
    }

    public int getQues11() {
        return ques11;
    }

    public void setQues11(int ques11) {
        this.ques11 = ques11;
    }

    public int getQues12() {
        return ques12;
    }

    public void setQues12(int ques12) {
        this.ques12 = ques12;
    }

    public int getQues13() {
        return ques13;
    }

    public void setQues13(int ques13) {
        this.ques13 = ques13;
    }

    public int getQues14() {
        return ques14;
    }

    public void setQues14(int ques14) {
        this.ques14 = ques14;
    }

    public int getQues15() {
        return ques15;
    }

    public void setQues15(int ques15) {
        this.ques15 = ques15;
    }

    public int getQues16() {
        return ques16;
    }

    public void setQues16(int ques16) {
        this.ques16 = ques16;
    }

    public int getQues17() {
        return ques17;
    }

    public void setQues17(int ques17) {
        this.ques17 = ques17;
    }

    public int getQues18() {
        return ques18;
    }

    public void setQues18(int ques18) {
        this.ques18 = ques18;
    }

    public int getQues19() {
        return ques19;
    }

    public void setQues19(int ques19) {
        this.ques19 = ques19;
    }

    public int getQues20() {
        return ques20;
    }

    public void setQues20(int ques20) {
        this.ques20 = ques20;
    }

    public int getQues21() {
        return ques21;
    }

    public void setQues21(int ques21) {
        this.ques21 = ques21;
    }

    public int getQues22() {
        return ques22;
    }

    public void setQues22(int ques22) {
        this.ques22 = ques22;
    }

    public int getQues23() {
        return ques23;
    }

    public void setQues23(int ques23) {
        this.ques23 = ques23;
    }

    public int getQues24() {
        return ques24;
    }

    public void setQues24(int ques24) {
        this.ques24 = ques24;
    }

    public int getQues25() {
        return ques25;
    }

    public void setQues25(int ques25) {
        this.ques25 = ques25;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public float getAverage() {
        return average;
    }

    public void setAverage(float average) {
        this.average = average;
    }

    @Override
    public String toString() {
        return "Result{" +
                "resultId=" + resultId +
                ", dname='" + dname + '\'' +
                ", session='" + session + '\'' +
                ", cclass='" + cclass + '\'' +
                ", sem=" + sem +
                ", cname='" + cname + '\'' +
                ", tname='" + tname + '\'' +
                ", totallec=" + totallec +
                ", lecattended=" + lecattended +
                ", ques1=" + ques1 +
                ", ques2=" + ques2 +
                ", ques3=" + ques3 +
                ", ques4=" + ques4 +
                ", ques5=" + ques5 +
                ", ques6=" + ques6 +
                ", ques7=" + ques7 +
                ", ques8=" + ques8 +
                ", ques9=" + ques9 +
                ", ques10=" + ques10 +
                ", ques11=" + ques11 +
                ", ques12=" + ques12 +
                ", ques13=" + ques13 +
                ", ques14=" + ques14 +
                ", ques15=" + ques15 +
                ", ques16=" + ques16 +
                ", ques17=" + ques17 +
                ", ques18=" + ques18 +
                ", ques19=" + ques19 +
                ", ques20=" + ques20 +
                ", ques21=" + ques21 +
                ", ques22=" + ques22 +
                ", ques23=" + ques23 +
                ", ques24=" + ques24 +
                ", ques25=" + ques25 +
                ", user="  + user +
                '}';
    }

}
