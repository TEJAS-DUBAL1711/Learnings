package com.OOP.Access;

public class AccessDemo {
    public int y=20;
    int x=10;
    private int z=30;
    protected int a=25;

}

class AccessDemoChild extends AccessDemo{
    public static void main(String[] args) {
        AccessDemoChild obj=new AccessDemoChild();
        System.out.println(obj.x);
        System.out.println(obj.y);
        System.out.println(obj.a);
     //   System.out.println(obj.z);// not access /only in same class

    }
}