import java.sql.*;
import java.io.*;

class ImageSave {

    public static void main(String[] args) {
        String url="jdbc:mysql://localhost:3306/youtube";
        String username="root";
        String password="Tejas@123";
        try {
            // Load the Driver
           // Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con= DriverManager.getConnection(url,username,password);

            if(con.isClosed()){
                System.out.println("connection failed.......");
            }else{
                System.out.println("connection sucessful");

            }

            String q = "CREATE TABLE if not exists Image (id INT PRIMARY KEY AUTO_INCREMENT, pic BLOB)";


            Statement stmt= con.createStatement();
            stmt.executeUpdate(q);
            System.out.println("table created succussfully");

            String q1="Insert into Image(pic) values(?)";

            PreparedStatement pstmt= con.prepareStatement(q1);

            FileInputStream Finput= new FileInputStream("C:/Users/RJ/OneDrive/Desktop/og.png");

            pstmt.setBinaryStream(1,Finput,Finput.available());
            pstmt.executeUpdate();
            System.out.println("done...");



        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
