package com.OOP.Cloning;

import java.util.Arrays;

// shallow copy it will not create new objects for array suppose we have instance variable like array it just pointing to it only notcreates new object
public class Client {

    public static void main(String[] args) throws CloneNotSupportedException {
        Demo obj=new Demo(10,"Tejas");

        System.out.println(obj.x);
        System.out.println(obj.str);
        System.out.println(Arrays.toString(obj.arr));

        obj.arr[0]=100;

//        Demo obj1=new Demo(obj);
//
//
//        System.out.println(obj1.x);
//        System.out.println(obj1.str); //it takes time or we need to write more code so we can use clone methode from object.

        Demo obj3= (Demo)(obj.clone());
        System.out.println(obj3.str);
        System.out.println(obj3.x);
        System.out.println(Arrays.toString(obj3.arr)); // this is called shallow copy

    }
}
