package diary;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date; 


public class Diary{

    String name;

    DBManager myManager;
    String [] table=null;
    String entry;
    String currentDate;
    
    /*This is the constructor for the genre object. It instantiates at                                                                        
     *mySQL connection and creates default values for artist, album, track                                      
     *and genre                                                                                                                                              */
    public Diary() throws SQLException, ClassNotFoundException{

	name= "None Specified";
	entry="None Specified";
	currentDate="None Specified";

	myManager= new DBManager();
	table=myManager.doMainQuery();
       
    }//Constructor

    /*This method returns the name.
    */
    public String getName(){
	return name;
    }//getName

    
    /*
     *This function returns the diary entry.  
     */
    public String getEntry(){
	return entry;
    }//getEntry

    
    /*This function returns the album name.                                                                                                        
     */
    public String  getDate(){
	return currentDate;
    }//getDate

    
    /*This function changes the original name to a new name.
     */
    public void setName(String newName){
	name=newName;
    }//setName


    /*This function changes the orignal entry to a new entry.
     */
    public void setEntry(String newEntry){
	entry=newEntry;
    }//setEntry

    /*This function changes the original date to the current date.                                                                                    
     */
    public void setDate(){
	SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
	Date currentDateObj = new Date();
	currentDate=currentDateObj+"";
	
    }//setDate


    /*This function gets the current table created by a recent query.                                                                                        *                                                                                                                                                       */
    public String [] getTable() throws SQLException, ClassNotFoundException{
	return table;
    }//getTable




    /* This methods sends a new set of strings to be entered into the database                                                                               * by calling a DBManager method that uses a String array. The idea is to have                                                                           *the JSP code set the genre, artist, album, and track based on parameters the user enters.                                                              */
    public void addEntry() throws SQLException, ClassNotFoundException{
	String newName= getName();
	String newEntry= getEntry();
	String newDate=getDate();
	String [] newDBRow= new String [3];
	newDBRow[0]=newName;
	newDBRow[1]=newEntry;
	newDBRow[2]=newDate;
	myManager.addDBEntry(newDBRow);
    }//addEntry
    
}//Diary.java      
