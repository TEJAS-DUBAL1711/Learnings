package com.OOP.Thread;

// Via runnable interface


//class c implements  Runnable{
//
//    @Override
//    public void run() {
//        for(int i=1; i<100;i++){
//            System.out.println("hii");
//        }
//
//    }
//}
//class D implements  Runnable{
//
//    @Override
//    public void run() {
//        for(int i=1; i<100;i++){
//            System.out.println("hello");
//        }
//
//    }
//}
//class Client1{
//    public static void main(String[] args) {
//        Runnable obj1=new c();
//        Runnable obj2=new D();
//        //obj1.start(); rubbable kade ny start method thread pahije tyala so error ahe
//        Thread t1=new Thread(obj1);
//        Thread t2=new Thread(obj2);
//        t1.start();
//        t2.start();
//    }
//}

//Runnable interface ahe funcational interface ahe mhanun aapan tyala lambda expression madhe convert karu shakto

// Via runnable interface



class Client1 {
    public static void main(String[] args) {
        Runnable obj1 = ()->{
                for (int i = 0; i < 100; i++) {
                    System.out.println("hii");
                }
            };

        Runnable obj2 = ()->{
                for (int i = 0; i < 100; i++) {
                    System.out.println("hello");
                }
        };

        Thread t1=new Thread(obj1);
        Thread t2=new Thread(obj2);
        t1.start();
        t2.start();
    }
}

