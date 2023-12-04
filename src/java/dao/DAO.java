/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import com.mysql.cj.xdevapi.PreparableStatement;
import context.DBContext;
import entity.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Hung Ngu
 */
public class DAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public Account Login(String user, String pass){
        String query = "SELECT * FROM customer WHERE username = ? AND password = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public void SignUp(String user, String pass, String pin, String name){
        String query = "INSERT INTO `customer` (`username`, `password`, `pincode`, `name`,`balance`) VALUES (?, ?, ?, ?, 0);";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, pin);
            ps.setString(4, name);
            ps.executeUpdate();
            
        } catch (Exception e) {
        }

    }
    public void updateBalance(String balance, String user){
        String query = "UPDATE `customer` SET `balance` = ? WHERE `customer`.`username` = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, balance);
            ps.setString(2, user);
            ps.executeUpdate();
            
        } catch (Exception e) {
        }

    }
    public void updatePin(String pin, String user){
        String query = "UPDATE `customer` SET `pincode` = ? WHERE `customer`.`username` = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pin);
            ps.setString(2, user);
            ps.executeUpdate();
            
        } catch (Exception e) {
        }

    }
    public String getNameReceiver(String user){
        String query = "SELECT name FROM customer WHERE username = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while(rs.next()){
                return rs.getString(1);
            }
        } catch (Exception e) {
        }
        return null;
    }
    public Account checkUsernameIsExist(String user){
        String query = "SELECT * FROM customer WHERE username = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Account(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5), rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public static void main(String[] args) {
        DAO dao = new DAO();
        System.out.println(dao.getNameReceiver("hungngu"));
    }
}
