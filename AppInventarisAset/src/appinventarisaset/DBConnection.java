
package appinventarisaset;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBConnection {
    private final String URL = "jdbc:mysql://localhost:3306/inventaris_aset";
    private final String USER = "root";
    private final String PASS = "";
    private static DBConnection instance = null;
    private Connection kon;
    
    public DBConnection(){
    }
    
    public Connection getConnection(){
        Connection con;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(URL,USER,PASS);
            System.out.println("Koneksi Berhasil");
            return con;
        } catch (ClassNotFoundException | SQLException ex) {
            System.err.println("Koneksi Gagal");
            return con = null;
        }
    }
    
    public static DBConnection getInstance(){
        if(instance == null){
            instance = new DBConnection();
        }
        return instance;
    }
    
    public static void main(String[] args) {
        DBConnection koneksi = new DBConnection();
        koneksi.getConnection();
    }
}
