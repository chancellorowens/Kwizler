
package diary;
import java.sql.*;
import junit.framework.*;
import java.util.ArrayList;

public class DBManagerTest extends TestCase{


    /* This function should test and make sure the connection is working                                                                                
     *properly.                                                                                                                                               */
    public static void testConnection ()throws SQLException, ClassNotFoundException {
	DBManager  myConnection= new DBManager();
	assertEquals( "Established Connection",myConnection.getStatus());
    }//testConnection

    
    //This method tests the getter for the connection variable.
    public static void testGetConn() throws SQLException, ClassNotFoundException{
	DBManager conn= new DBManager();
	if(conn.getConn()==null){
	    assertEquals(false, true);
	}else{
	    assertEquals(true, true);
	}



    }//getConn


    //This method tests the getter for the status variable.
    public static void testGetStatus() throws SQLException, ClassNotFoundException{
	DBManager conn= new DBManager();
	if(conn.getStatus()==null){
	    assertEquals(false, true);
	}else{
	    assertEquals(true, true);
	}
    }//testGetStatus






}
