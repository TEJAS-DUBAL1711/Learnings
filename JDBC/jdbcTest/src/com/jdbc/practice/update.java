package com.jdbc.practice;

import java.io.*;

import java.sql.*;

public class update {

    public static void main(String[] args) {


        try{
            Connection c=ConnectionProvider.getConnection();

            BufferedReader br=new BufferedReader(new InputStreamReader(System.in));

            String q="update employee set name=? ,age=? where id=?";

            PreparedStatement pstmt=c.prepareStatement(q);

            System.out.println("Enter name :");
            String Uname=br.readLine();

            System.out.println("Enter name :");
            int Uage=Integer.parseInt(br.readLine());

            System.out.println("Enter id:");
            int Uid=Integer.parseInt(br.readLine());

            pstmt.setString(1,Uname);
            pstmt.setInt(2,Uage);
            pstmt.setInt(3,Uid);

            pstmt.executeUpdate();
            System.out.println("done...");

            c.close();


        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
