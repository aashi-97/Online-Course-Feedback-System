package com.example.demo.model;

import java.io.Serializable;

public class Output4 implements Serializable {

    private String bestcoursename;
    private float univ_best_score;

    public Output4(){

    }

    public Output4(String bestcoursename, float univ_best_score) {
        this.bestcoursename = bestcoursename;
        this.univ_best_score = univ_best_score;
    }

    public String getBestcoursename() {
        return bestcoursename;
    }

    public void setBestcoursename(String bestcoursename) {
        this.bestcoursename = bestcoursename;
    }

    public float getUniv_best_score() {
        return univ_best_score;
    }

    public void setUniv_best_score(float univ_best_score) {
        this.univ_best_score = univ_best_score;
    }
}
