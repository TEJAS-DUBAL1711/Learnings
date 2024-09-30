package com.OOP.Inner_Class;


class A{
    public  void show(){
        System.out.println("in show A");
    }
}
class B extends  A{
    @Override
    public void show() {
        System.out.println("in show B");
    }
}
public class AnnonymousInnerClass {
    public static void main(String[] args) {
        B obj=new B();
        obj.show();
        A obj1=new A(){ // extends 'karun' override 'karayche vachate'
            @Override
            public void show() {
                System.out.println(" in new Show");
            }
        };
        obj1.show(); //call new show la janar 
    }

}
