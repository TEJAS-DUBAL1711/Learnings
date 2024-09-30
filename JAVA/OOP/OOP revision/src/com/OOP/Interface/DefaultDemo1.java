package com.OOP.Interface;

public interface DefaultDemo1 {

    void dubal(); //  funcations in interface are default -> static final

    default void info(){
        System.out.println("it's working");
    }
}