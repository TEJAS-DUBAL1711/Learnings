package com.OOP.FileHandling_IO;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;


public class PrintWriterDemo {

    public static void main(String[] args) throws IOException{
        String path="D://Restart//io.txt";
        File file=new File(path);

        FileWriter fw=null;
        PrintWriter pw=null;

        try{
            fw=new FileWriter(file,true);
            pw=new PrintWriter(fw);



            pw.println(5429);
            pw.print("my Name is Tejas Dubal");
            pw.println();
            pw.print(58.60);
            pw.println();
            pw.write(65);//A
            pw.println();
            pw.print(65);//65


        }catch (IOException e){
           throw new IOException("you failled");

        }finally {
            pw.close();
        }
    }
}
