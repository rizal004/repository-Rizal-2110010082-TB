/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package project;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author MSI GF63
 */
public class Koneksi {
   private static Connection mysqlkoneksi;
   public static Connection koneksiDB()throws SQLException{
       if(mysqlkoneksi==null){
           try{
               String DB = "jdbc:mysql://localhost:3307/dbpendaftaran";
               String user = "root";
               String pass = "";
               DriverManager.registerDriver(new com.mysql.jdbc.Driver());
               mysqlkoneksi=(Connection)DriverManager.getConnection(DB, user, pass);
           }catch (Exception e){
               
           }
       }return mysqlkoneksi;
   }
    
}
