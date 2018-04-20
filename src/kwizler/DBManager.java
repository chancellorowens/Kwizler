// Java file for managing the database.
package kwizler;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBManager {

    Connection conn;
    String status="Not Connected";


    /*This is the constructor for the DBManager class.                                                  
     *It creates a connection to the database and calls the main query
     */
    public DBManager () throws SQLException, ClassNotFoundException{
	Class.forName("com.mysql.jdbc.Driver");
	conn= DriverManager.getConnection("jdbc:mysql://localhost/vocabSets" ,"root","csci4300");
	if(conn!=null){
	    status="Established Connection";
      	}//if
    }//DBManager


    /*This is the getter method for connection                               
     */
    public Connection getConn() throws SQLException, ClassNotFoundException{
	return conn;
    }//getConn


    /*This is the getter method for determining the status of the connection.                           
     */
    public String getStatus()throws SQLException, ClassNotFoundException{
	return status;
    }//getStatus

}//DBManager
