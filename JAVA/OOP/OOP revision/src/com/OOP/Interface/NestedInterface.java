package com.OOP.Interface;

public class NestedInterface {

    interface Demo{
        void revision();
    }
}

class Client1 implements  NestedInterface.Demo{

   public void revision(){
        System.out.println("revision done");
    }

    public static void main(String[] args) {
        NestedInterface.Demo obj=new Client1();
        obj.revision();
    }
}