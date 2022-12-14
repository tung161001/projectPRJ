/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Booking;
import model.Room;

/**
 *
 * @author thang
 */
public class BookingDAO {
    public int create(int userID , int RoomID , Date dateStart  , Date dateEnd) {
        try {
            String sql = "insert into booking(userID,roomID,dateStart,dateEnd)\n" +
"		values(?,?,?,?)";
            BaseDAO baseDAO = new BaseDAO();
            Connection connection = baseDAO.connection;
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, userID);
            pst.setInt(2, RoomID);
            pst.setDate(3, dateStart);
            pst.setDate(4, dateEnd);
            return pst.executeUpdate();
        } catch (SQLException e) {
            System.err.println("error create: BookingDAO " + e);
            return -1;
        }
    }
    public  ArrayList<Booking> getByRoom(int roomID) {
        ArrayList<Booking> list = new ArrayList<>();
        try {
            String sql = "select userID, roomID, dateStart, dateEnd from booking where roomID = ?";
            BaseDAO baseDAO = new BaseDAO();
            Connection connection = baseDAO.connection;
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, roomID);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {                
                list.add(
                    new Booking(rs.getInt("userID"),rs.getInt("roomID")
                    , rs.getDate("dateStart"), rs.getDate("dateEnd"))
                );
            }
        } catch (SQLException e) {
            System.err.println("error getByRoom: BookingDAO " + e);
        }
        return list;
    }
    
    
    public static void main(String[] args) {
        BookingDAO b = new BookingDAO();
    }
}
