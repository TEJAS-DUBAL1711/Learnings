package com.OOP.FileHandling_IO;

import java.io.File;

public class program1 {

    public static void main(String[] args) {
        String filePath="D://Restart//io.txt";
        String dirPath="D:Restart//Dir";

        File file1=new File(filePath);
        File file2=new File(dirPath);

        System.out.println(file1.getPath());
        System.out.println(file1.getName());
        System.out.println(file1.getParent()); // jyachyat file ahe to parent aasato like here restart madhe io.txt ahe
        System.out.println("------------///////----------------");
        System.out.println(file1.getClass());

    }
}
