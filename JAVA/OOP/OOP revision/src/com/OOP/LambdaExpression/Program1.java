package com.OOP.LambdaExpression;
// java 8 feature, it is a anonymous inner class mostly used to give implementation to the funcational interface method
interface Demo{
    void show();
}
interface Demo1{

    void show(String name);
}
class Client{
    public static void main(String[] args) {

        Demo obj=()-> System.out.println(".................In show...............");
        obj.show();

      //  Demo1 obj1=(str)-> System.out.println(str);
          Demo1 obj1=str-> System.out.println(str);
        obj1.show("Tejas");

    }
}
// lambda expressions works with the funcational interfaces