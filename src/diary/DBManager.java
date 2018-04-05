package diary;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBManager {

    Connection conn;
    String status="Not Connected";


    /*This is the constructor for the DBManager class.       
     *It creates a connection to the database and calls the main query (all the data entries).                   
     */
    public DBManager () throws SQLException, ClassNotFoundException{
	Class.forName("com.mysql.jdbc.Driver");
	conn= DriverManager.getConnection("jdbc:mysql://localhost/Kwizler" ,"root","csci4300");
	if(conn!=null){
	    status="Established Connection";
	    doMainQuery();
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

    /*This method calls the main query for our database. It extracts all music library entries                         
     *and adds them one column cell down the row  at a time (3 columns total) to a String array.
     *The string array is returned.                                                         
     */
    public String [] doMainQuery() throws SQLException, ClassNotFoundException{
	String query= "select * from diary";
	String countFinder="select count(entry) from diary";
	Statement stmt= conn.createStatement();
	ResultSet countOfRows=stmt.executeQuery(countFinder);
	int count=0;
	while(countOfRows.next()){
	    //One iteration of the row should return the first true result set value, the only value in this case.
	    //The value represents the total number of rows in the database table.
	    count=countOfRows.getInt(1);
	}//while

	ResultSet rs = stmt.executeQuery(query);
	String [] listOfDB= new String[(count*3)];
	int i=0;
	while(rs.next() & i<count){
	    //This loop iterates through the result set and adds each column to the string array one row at a time (ith row in just one iteration)
	    listOfDB[0+(3*i)]=rs.getString(1);
	    listOfDB[1+(3*i)]=rs.getString(2);
	    listOfDB[2+(3*i)]=rs.getString(3);
	    i++;
	}//while
	return listOfDB;
    }//doMainQuery

    

    /*This method adds a new entry to the database table. It takes in a string array that includes four values.                  *The values should be derived from parameters the user enters on the JSP page.                                              */
    public void addDBEntry(String [] entry)throws SQLException, ClassNotFoundException{
	String query= "INSERT INTO diary (name, entry, date) VALUES (?,?,?)";
	PreparedStatement stmt= conn.prepareStatement(query);
	stmt.setString(1, entry[0]);
	stmt.setString(2, entry[1]);
	stmt.setString(3, entry[2]);
	stmt.execute();

    }//addDBEntry


}