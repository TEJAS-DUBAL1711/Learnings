package com.OOP.LambdaExpression;

interface  DEMO{
    int show(int x,int y);
}
class Add{
    public static void main(String[] args) {
        DEMO obj=( i, j)-> i+j;// not need to write return
        int result=obj.show(10,20);
        System.out.println(result);
        System.out.println(obj);
    }
}
