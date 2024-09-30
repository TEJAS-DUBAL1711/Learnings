package com.OOP.Object_class;

public class TJ7 {

    int x=10;

    public TJ7(int x) {
        this.x = x;
    }

//    @Override
//    public String toString() { println --> valueOf -->toString
//        return super.toString();
//    }
//    protected void finalize() throws Throwable { Garbage collector = finalize call
//    }

//    @Override
//    public int hashCode() {
//        return 143;
//    }
    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override
    protected Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public static void main(String[] args) {
        TJ7 obj=new TJ7(10);
        TJ7 obj1=obj;
        System.out.println(obj.hashCode());
        System.out.println(obj1.hashCode());// random value we can give which we want just override it
        System.out.println(obj1 instanceof TJ7);
        System.out.println(obj instanceof Object);

//        The instanceof operator in Java is used to test whether an object is an instance of a specific class or a subclass thereof. It returns a boolean value: true if the object is an instance of the specified type, and false otherwise.
    }

}
