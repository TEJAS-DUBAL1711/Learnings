package com.OOP.Interface;

public interface InterfaceDemo {

    abstract void fun11();
    static  int x=10;
}
class Demo implements  InterfaceDemo{

    int y=20;
    public void  fun11(){
        System.out.println("in fun");
    }

}
class Client{
    public static void main(String[] args) {
        InterfaceDemo obj=new Demo();
      //  System.out.println(obj.y);
        System.out.println(obj.x);
        obj.fun11();
    }
}