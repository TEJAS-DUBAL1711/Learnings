package com.OOP.FileHandling_IO;

import java.io.File;
import java.io.IOException;

public class IoDemo {
    public static void main(String[] args) {

      //  File file=new File("D://Restart//io.txt");
       // System.out.println(file.exists());

//        try{
//            file.createNewFile();
//
//            System.out.println(file.exists());
//
//    }catch (IOException e){
//    System.out.println("Something Wrong...");
        File file2=new File("D://Restart//Dir");
        System.out.println(file2.exists());
        file2.mkdir();
        System.out.println(file2.exists());


    }

}
