package com.OOP.FileHandling_IO.Serialization;


import java.io.*;
import java.util.ArrayList;

class Student implements Serializable {
    private int id;
    private  String name;
    private int age;

    public Student(int id, String name, int age) {
        super();
        this.id = id;
        this.name = name;
        this.age = age;
    }
    void printValue(){
        System.out.println(id+":"+name+":"+age);
    }
}
public class SerializationDemo {

    public static void main(String[] args) throws IOException {
        String path="D://Restart//SerilizedObj.txt";
        Student obj1=new Student(101,"Tejas Dubal",21);

        FileOutputStream fos= null;
        BufferedOutputStream bos=null;
        ObjectOutputStream oos = null;

        Student obj2=new Student(102,"Shrenik Dubal",19);

        try {
            fos = new FileOutputStream(path);
            bos=new BufferedOutputStream(fos); // it enhance performance we can also create with just fos
            oos=new ObjectOutputStream(bos);
            oos.writeObject(obj1);
            oos.writeObject(obj2);

        } catch (FileNotFoundException e) {
            throw new RuntimeException(e);
        }catch (IOException e){
           throw new IOException();
        }finally {
            oos.close();

        }
        obj1.printValue();
        obj2.printValue();
        System.out.println("Check the file  it will have the objects :");

    }

}
