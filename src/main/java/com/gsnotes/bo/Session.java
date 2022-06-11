package com.gsnotes.bo;


public class Session {
    private Long id;
    private String titre;

    public void session(Long id, String titre) {
        this.id=id;
        this.titre=titre;
    }
}
