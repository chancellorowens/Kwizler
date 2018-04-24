package kwizler;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.lang.ClassNotFoundException;

public class Kwizler {
    
    DBManager db;
    String[][] vocabList = new String[2][25]; 

    /*This is the constructor for the Kwizler class. It creates a new 
     *of the DBManager.
     */
    public Kwizler() throws ClassNotFoundException, SQLException{
	db = new DBManager();
    }//Kwizler
    
    /*                                                                                                                 
      Creates a new table filled with vocab words and definitions for a anew sub-category                             
    */
    public void setVocabList(String tableName, String[][] vocab) throws ClassNotFoundException,SQLException{
	if (tableName==null){
	    tableName="test4";
	}    
	//	tableName="newTableTest";
	String query = "CREATE TABLE " + tableName + " (term varchar(255), definition varchar(255));";
	Connection conn= db.getConn();
	PreparedStatement showStatement = conn.prepareStatement(query);
	showStatement.execute();
	for(int i=0; i<25; i++){
	    String newQuery="insert into " + tableName + "(term, definition) values("+vocab[0][i]+","+vocab[1][i]+");";
		showStatement= conn.prepareStatement(newQuery);
		showStatement.execute();
		
	
	}
	
    }//setVocabList
    
    /*
      Edits a category table to include the new vocab list title. 
    */
    public void addVocabListToTable(String setName, String categoryName) throws ClassNotFoundException,SQLException{
	if(setName==null){
	    setName="test";
	}    
	String query="insert into "+categoryName+" (vocabSet) values("+ setName+") ;";
	Connection conn=db.getConn();
	PreparedStatement showStatement= conn.prepareStatement(query);
	showStatement.execute();


	
    }//addVocabListToTable


    /*
      Gets all the entries in a sub-category table ready to be viewed in the jsp page
    */
	
    public String[][] getVocabList(String vocabListName) throws SQLException, ClassNotFoundException{
	Connection conn= db.getConn();
	String query="SELECT * FROM calculus ";
	PreparedStatement showStatement = conn.prepareStatement(query);
	//showStatement.setString(1,vocabListName);
	ResultSet rs = showStatement.executeQuery();
	    
	String [][] resultString = new String[2][25];
	for(int i = 0; rs.next(); i++){
	    //generates the ith vocab word with the matching ith definition in a 2D String Array.
	    resultString[0][i] = rs.getString(1);//should be the vocab word 
	    resultString[1][i] = rs.getString(2);
	}//for
	vocabList = resultString;
	return resultString;
    }//getVocabList
	
}//Kwizler
