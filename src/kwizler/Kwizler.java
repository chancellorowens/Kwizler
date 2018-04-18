//Java file 
// Java file for managing the database.
package kwizler;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.lang.ClassNotFoundException;

public class Kwizler {
    DBManager db;
    public static void main(String[] args) throws SQLException, ClassNotFoundException{
	DBManager db = new DBManager();
    }
    /*
      Contains all the functioallity for adding a new sub-category for a subject
    */
      public void addVocabList(){

    }
    /*
      Creates a new table filled with vocab words and definitions for a anew sub-category
    */
    public void createVocabListTable(){
	
    }
    /*
      Gets all the entries in a sub-category table ready to be viewed in the jsp page
    */
    /*public String[][] viewVocabList(String vocabListName){
	PreparedStatement showStatement = conn.prepareStatement("SELECT * FROM ?");
	searchStatement.setString(1,vocabListName);
	rs = searchStatement.executeQuery();
	String [][] resultString = new String[2][25];
	for(int i = 0; rs != null && rs.next(); i++){
	    resultString[0][i] = rs.getString(1);//should be the vocab word 
	    resultString[1][i] = rs.getString(2);
	}	
    }
*/	
}
