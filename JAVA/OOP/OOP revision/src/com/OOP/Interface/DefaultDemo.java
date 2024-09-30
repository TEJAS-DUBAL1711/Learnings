package com.OOP.Interface;
// after java 8 default funcation is introduced
public interface DefaultDemo {

    void tj7(); //  funcations in interface are default -> static final

    default void info(){
        System.out.println("it's working");
    }
}

class Client2 implements  DefaultDemo,DefaultDemo1{

    public void dubal(){
        System.out.println("ndjbc");
    }

    @Override
    public  void tj7(){
        System.out.println("override");
    }
    @Override
   public   void info(){
        System.out.println("it's working in implemented class"); //if we override it will work
    }


    public static void main(String[] args) {
        DefaultDemo obj=new Client2();
        obj.info();
        obj.tj7();
    }
}

//static and default methodes are allowed in interface
/*java: types com.OOP.Interface.DefaultDemo and com.OOP.Interface.DefaultDemo1 are incompatible;
  class com.OOP.Interface.Client2 inherits unrelated defaults for info() from types com.OOP.Interface.DefaultDemo and com.OOP.Interface.DefaultDemo1 */