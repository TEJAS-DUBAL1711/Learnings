package com.OOP.FileHandling_IO;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
//writting and Reading data using FileReader and FileWriter class
public class WritingData {

    public static void main(String[] args) throws IOException {
        String filepath="D://Restart//io.txt";


        File obj=new File(filepath);
        FileWriter writer = null;
        FileReader read=null;

        try {
            writer=new FileWriter(filepath);
            writer.write("Tejas");
            writer.write('\n');
            char[]arr=new char[]{'i','s',' ','g','o','i','n','g',' ','t','o',' ','w','i','n',' '};
            writer.write(arr);
            writer.write('\n');
            writer.write("12");
            writer.write(76);
            writer.write(80);
            writer.write(65);
            System.out.println(writer==null);

        } catch (IOException e) {
            throw new RuntimeException(e);
        }finally {
            writer.close();
        }
        read=new FileReader(filepath);
        int character;
      while ((character=read.read())!=-1){
          System.out.println((char)character);

      }
    }
}
