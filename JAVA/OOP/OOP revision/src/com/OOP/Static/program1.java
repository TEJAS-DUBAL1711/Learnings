package com.OOP.Static;

public class program1 {

    static void  Static_fun(){
        System.out.println("in static method");

    }

    static{
        System.out.println("static block:1");
    }
    public static void main(String[] args) {
        System.out.println("in main method:2");
        program1 obj=new program1();
        program1.Static_fun();
        obj.Instance_fun();
         // ptr to special structure -> special structure -> static block. [ c2w check all diagrams]
    }
    public void Instance_fun(){
        System.out.println("in instance method");

    }

    {
        System.out.println("Instance block:3");
    }

}
