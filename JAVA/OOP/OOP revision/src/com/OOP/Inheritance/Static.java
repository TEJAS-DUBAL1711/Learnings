package com.OOP.Inheritance;

 class Parent_ {

     static void fun(){
         System.out.println("In parentFun");
     }
}
class child1 extends Parent_{

     static void fun(){
         System.out.println("in child fun");
     }

}
class  client{
    public static void main(String[] args) {
        Parent_ obj=new child1();
      //  child1 obj=new child1();

        obj.fun();
    }
}
