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
import model.Room;

/**
 *
 * @author thang
 */
public class RoomDAO {

    public ArrayList<Room> searchRoom(Date dateStart, Date dateEnd) {
        ArrayList<Room> list = new ArrayList<>();
        try {
            String sql = "select r.roomID,r.name,r.qualityID,r.bed,r.price,area,r.image,r.description from \n"
                    + "		booking as b right join room as r on b.roomID = r.roomID\n"
                    + "		where dateStart is null or ((b.dateStart not between ? and ?) \n"
                    + "		and (b.dateEnd not between  ? and ?)) ";
            BaseDAO baseDAO = new BaseDAO();
            Connection connection = baseDAO.connection;
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setDate(1, dateStart);
            pst.setDate(2, dateEnd);
            pst.setDate(3, dateStart);
            pst.setDate(4, dateEnd);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                list.add(
                        new Room(rs.getInt("roomID"), rs.getString("name"), rs.getInt("qualityID"),
                                 rs.getInt("bed"), rs.getInt("price"),rs.getInt("area"), rs.getString("image"), rs.getString("description"))
                );
            }
        } catch (SQLException e) {
            System.err.println("error getByRoom: BookingDAO " + e);
        }
        return list;
    }

    public ArrayList<Room> getAll() {
        ArrayList<Room> list = new ArrayList<>();
        try {
            String sql = "select roomID , name ,qualityID,bed , price,area, image,description from room";
            BaseDAO baseDAO = new BaseDAO();
            Connection connection = baseDAO.connection;
            PreparedStatement pst = connection.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                list.add(
                        new Room(rs.getInt("roomID"), rs.getString("name"), rs.getInt("qualityID"),
                                 rs.getInt("bed"), rs.getInt("price"),rs.getInt("area"), rs.getString("image"), rs.getString("description"))
                );
            }
        } catch (SQLException e) {
            System.err.println("error getByRoom: BookingDAO " + e);
        }
        return list;
    }
    
    public static void main(String[] args) {
        RoomDAO r = new RoomDAO();
        System.out.println(r.getAll());
    }
    
}
