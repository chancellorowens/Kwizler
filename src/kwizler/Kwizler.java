//Java file 
// Java file for managing the database.
package kwizler;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Kwizler {
    
    DBManager db;
    String[][] vocabList = new String[2][25]; 

    public Kwizler() throws ClassNotFoundException, SQLException{
	db = new DBManager();
    }
    /*
      Contains all the functioallity for adding a new sub-category for a subject
    */
    public void setVocabList(String tableName, String[][] vocab) throws SQLException{
	String query = "CREAT TABLE " + tableName + " (Word varchar(255), definition varchar(255));";
    }
    /*
      Creates a new table filled with vocab words and definitions for a anew sub-category
    */
    public void createVocabListTable() throws SQLException{
	
    }
    /*
      Gets all the entries in a sub-category table ready to be viewed in the jsp page
    */
    public String[][] getVocabList(String vocabListName) throws SQLException{
	PreparedStatement showStatement = db.conn.prepareStatement("SELECT * FROM ?");
	showStatement.setString(1,vocabListName);
	ResultSet rs = showStatement.executeQuery();
	String [][] resultString = new String[2][25];
	for(int i = 0; rs != null && rs.next(); i++){
	    resultString[0][i] = rs.getString(1);//should be the vocab word 
	    resultString[1][i] = rs.getString(2);
	}
	vocabList = resultString;
	return vocabList;
    }
	
}
