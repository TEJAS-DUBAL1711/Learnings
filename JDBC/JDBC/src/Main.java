
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.sql.*;

class FirstJDBC{

    public static void main(String[] args) {

        BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
        try{
            //load the Driver:
            Class.forName("com.mysql.cj.jdbc.Driver");
            //creating a Connection

            String url="jdbc:mysql://localhost:3306/youtube";
            String username="root";
            String password="Tejas@123";
            Connection con= DriverManager.getConnection(url,username,password);

            if(con.isClosed()){
                System.out.println("connection is not estabilished");
            }else{
                System.out.println("Connection successful");
            }

            String q="Create Table studentInfo(Id int Primary key auto_increment not null,name varchar(20) not null,age float)";

            Statement stmt=con.createStatement();
           // stmt.executeUpdate(q);
            System.out.println("table is Created");

            String q1="Insert into studentInfo(name,age) values(?,?)";
            PreparedStatement pstmt =con.prepareStatement(q1);

//            pstmt.setString(1,"Tejas");
//            pstmt.setFloat(2,21);
//            pstmt.setString(3,"Tej");
//            pstmt.setFloat(4,22);
//            pstmt.setString(5,"ejas");
//            pstmt.setFloat(6,25);
            System.out.println("Enter name");
            String name=br.readLine();
            System.out.println("enter age");
            float age=Float.parseFloat(br.readLine());
            pstmt.setString(1,name);
            pstmt.setFloat(2,age);
            System.out.println("values are inserted in table");

            pstmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}