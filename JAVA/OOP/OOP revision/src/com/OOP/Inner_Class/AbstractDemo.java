package com.OOP.Inner_Class;

public abstract class AbstractDemo {

    abstract void show();


}

class Demo{
    public static void main(String[] args) {
        AbstractDemo obj=new AbstractDemo() {
            @Override
            void show() {
                System.out.println("in show");

            }
        };
        obj.show();
    }
}
