package com.OOP.Generics;

public class Program <T>{



    T x;
    public Program(T obj) {
        this.x=obj;
    }

    public T getX() {
        return x;
    }

    @Override
    public String toString() {
        return "this is object of Program";
    }
}
class Client{
    public static void main(String[] args) {
        Program<Integer> obj=new Program<>(17);
       // Program<Integer> obj=new Program<>("Tejas"); we cant pass string as we have specified integer as its type
        System.out.println(obj.getX());
        Program<Program> obj1=new Program<>(obj);
        System.out.println(obj1.getX());
    }
}