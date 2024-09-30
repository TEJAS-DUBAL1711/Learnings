package com.OOP.Cloning;
 //marker Interface Clonable:- in clonable their is not any methodes its just told jvm it is allowed to make this class's clone
//note : marker interfaces not have any methodes they are just used to told jvm some info
public class Demo implements Cloneable {

 int x;
 String str;
int[] arr;
  public Demo(int x, String str) {
   this.x = x;
   this.str = str;
   this.arr=new int[]{1,2,3,4,5};
  }

  public Demo(Demo O) {
    this.x=O.x;
    this.str= O.str;
  }


  @Override
  protected Object clone() throws CloneNotSupportedException {
   return super.clone();
  }
 }
