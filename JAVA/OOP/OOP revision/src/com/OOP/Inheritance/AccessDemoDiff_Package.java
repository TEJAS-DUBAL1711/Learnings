package com.OOP.Inheritance;


import com.OOP.Access.AccessDemo;


public class AccessDemoDiff_Package extends AccessDemo {


    public static void main(String[] args) {
        AccessDemo obj=new AccessDemo();
        AccessDemoDiff_Package obj1= new AccessDemoDiff_Package();
       // System.out.println(obj.x); default can't access from diff package
        System.out.println(obj.y); //public can acess
      //  System.out.println(obj.a); //only subclass can access even itself super class also dont have access of its fields
        //   System.out.println(obj.z);// not access /only in same class

        System.out.println(obj1.a);// only subclass can access protected


    }

}
