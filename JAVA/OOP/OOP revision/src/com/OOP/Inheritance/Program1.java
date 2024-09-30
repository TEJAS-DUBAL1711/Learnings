package com.OOP.Inheritance;

public class Program1 {

int x;
int y;
//  Program1(){
//
//  }
    public Program1(int x,int y) {
        this.x = x;
        this.y=y;
    }
}
class Program2 extends Program1{
    int z;
    int w;
    Program2(int z,int w){
        super(11,12);
        this.w=w;
        this.z=z;

    }

}
class Client{
    public static void main(String[] args) {
        Program2 obj=new Program2(12,12);
        System.out.println(obj.x
                +" "+obj.w+" "+obj.y+" "+obj.z);

    }
}
