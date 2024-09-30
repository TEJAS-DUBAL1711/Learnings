package com.OOP.Access;

public class AccessDemoChild1 extends AccessDemo{

    public static void main(String[] args) {
        AccessDemoChild obj=new AccessDemoChild();
        AccessDemo obj1= new AccessDemoChild1();
        AccessDemo obj2=new AccessDemo();
        System.out.println(obj2.a);// Parent class have access in same package of his own variables;
        System.out.println(obj1.a);
        System.out.println(obj.x);// default access
        System.out.println(obj.y);// public have access all in the world
        System.out.println(obj.a);//protected have access in same package
        //System.out.println(obj.z); private also not access in same package

    }
}
