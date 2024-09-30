package com.OOP.FileHandling_IO;

import java.io.*;

public class BufferWriterDemo {

    public static void main(String[] args) throws IOException {
        String filepath="D://Restart//New Text Document.txt";


        File obj=new File(filepath);
        FileWriter writer = null;
        BufferedWriter bw=null;
        BufferedReader br=null;
        FileReader freader=null;

        try {
            writer=new FileWriter(obj,true);
            bw=new BufferedWriter(writer);
            freader=new FileReader(obj);
            br=new BufferedReader(freader);

            bw.write("Tejas");
            bw.newLine();
            char[]arr=new char[]{'i','s',' ','g','o','i','n','g',' ','t','o',' ','w','i','n',' '};
            bw.write(arr);
            bw.newLine();
            bw.write("12");
            bw.write(76);
            bw.write(80);
            bw.write(65);
            String line=br.readLine();
            while (line!=null){
                System.out.println(line);
                line=br.readLine();
            }


        } catch (IOException e) {
            throw new RuntimeException(e);
        }finally {
           // bw.flush();
            bw.close();
        }


        }
}
