package com.OOP.FileHandling_IO.Serialization;

import java.io.*;



public class DeserilizationDemo {


    public static void main(String[] args) {

        String path="D://Restart//SerilizedObj.txt";
        try {
            FileInputStream fis=new FileInputStream(path);
            BufferedInputStream bis=new BufferedInputStream(fis);
            ObjectInputStream ois=new ObjectInputStream(bis);

           Student stu1 =(Student)ois.readObject();
           stu1.printValue();
            Student stu2 =(Student)ois.readObject();
            stu2.printValue();
            System.out.println();
            System.out.println("Stored in Arraylist and access ");





        } catch (FileNotFoundException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

    }
}
