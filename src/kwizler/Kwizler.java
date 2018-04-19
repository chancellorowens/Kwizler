//Java file 
// Java file for managing the database.
package kwizler;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.lang.ClassNotFoundException;

public class Kwizler {
<<<<<<< HEAD
    
    DBManager db;
    String[][] vocabList = new String[2][25]; 

    public Kwizler() throws ClassNotFoundException, SQLException{
	db = new DBManager();
=======
    DBManager db;
    public static void main(String[] args) throws SQLException, ClassNotFoundException{
	DBManager db = new DBManager();
>>>>>>> 6511a1e2c378fb80fbb30f1bae596c00a9fee1b3
    }
    /*
      Contains all the functioallity for adding a new sub-category for a subject
    */
<<<<<<< HEAD
    public void setVocabList(String tableName, String[][] vocab) throws SQLException{
	String query = "CREAT TABLE " + tableName + " (Word varchar(255), definition varchar(255));";
=======
      public void addVocabList(){

>>>>>>> 6511a1e2c378fb80fbb30f1bae596c00a9fee1b3
    }
    /*
      Creates a new table filled with vocab words and definitions for a anew sub-category
    */
    public void createVocabListTable() throws SQLException{
	
    }
    /*
      Gets all the entries in a sub-category table ready to be viewed in the jsp page
    */
<<<<<<< HEAD
    public String[][] getVocabList(String vocabListName) throws SQLException{
	PreparedStatement showStatement = db.conn.prepareStatement("SELECT * FROM ?");
	showStatement.setString(1,vocabListName);
	ResultSet rs = showStatement.executeQuery();
=======
    /*public String[][] viewVocabList(String vocabListName){
	PreparedStatement showStatement = conn.prepareStatement("SELECT * FROM ?");
	searchStatement.setString(1,vocabListName);
	rs = searchStatement.executeQuery();
>>>>>>> 6511a1e2c378fb80fbb30f1bae596c00a9fee1b3
	String [][] resultString = new String[2][25];
	for(int i = 0; rs != null && rs.next(); i++){
	    resultString[0][i] = rs.getString(1);//should be the vocab word 
	    resultString[1][i] = rs.getString(2);
	}
	vocabList = resultString;
	return vocabList;
    }
*/	
}
