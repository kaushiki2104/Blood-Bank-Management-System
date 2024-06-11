package DB;
import java.sql.*;

public class dbcon {
     public Connection con;
     public PreparedStatement pstmt;
     public ResultSet rst;               
   
    public dbcon()
    {
      try{
           //Class.forName("com.mysql.jdbc.Driver");
           Class.forName("org.mariadb.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3307/bloodbank_management","root","root");
       }
      catch(Exception e)
                    {
                    e.printStackTrace();
                    }
            
    }
  }
