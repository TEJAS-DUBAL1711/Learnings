package com.OOP.Static;

public class program2 {

    static  int x=50;
    String str="Tejas";


    static class innerClass{
      //  static int x=50;
        String str;
        public innerClass(String str) {
            this.str = str;
        }

        @Override
        public String toString() {
            return "object of innerclass";
        }
    }


    public static void main(String[] args) {

        innerClass obj1=new innerClass("Tejas");
        innerClass obj2=new innerClass("Tejas");
        System.out.println(123456);
        obj2=null;

        System.out.println(x);
        System.out.println(obj1);
        System.out.println(obj2);


    }
}
