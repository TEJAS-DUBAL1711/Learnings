package com.OOP.Thread;

class A extends Thread{

    public void run() {

        for(int i=0; i<100;i++){
            System.out.println("hii");
        }
        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }

    }
}
class B extends  Thread{
    public void run(){


        for(int i=0; i<50;i++){
            System.out.println("hello");
        }
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}
class Client{
    public static void main(String[] args) {
        A obj1=new A();
        B obj2=new B();
        System.out.println("In client");
        obj1.start();
        obj2.start();

    }
}