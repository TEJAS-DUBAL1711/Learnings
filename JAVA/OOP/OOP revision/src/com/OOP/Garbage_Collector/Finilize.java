package com.OOP.Garbage_Collector;

class FinilizeDemo{
    public static void main(String[] args) {

        A obj;

        for(int i=0; i<+10000000;i++){
            obj= new A();
        }
    }
}
class A{
    final int x=10;

    @Override
    protected void finalize() throws Throwable {
        System.out.println(" object is Destroyed");
    }
}

// when jvm calls gc then it will call Finilize method also;