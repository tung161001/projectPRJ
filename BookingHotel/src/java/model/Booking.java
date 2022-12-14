/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author thang
 */
public class Booking {
    int userID ;
    int roomID ;
    Date dateStart;
    Date dateEnd;

    public Booking(int userID, int roomID, Date dateStart, Date dateEnd) {
        this.userID = userID;
        this.roomID = roomID;
        this.dateStart = dateStart;
        this.dateEnd = dateEnd;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getRoomID() {
        return roomID;
    }

    public void setRoomID(int roomID) {
        this.roomID = roomID;
    }

    public Date getDateStart() {
        return dateStart;
    }

    public void setDateStart(Date dateStart) {
        this.dateStart = dateStart;
    }

    public Date getDateEnd() {
        return dateEnd;
    }

    public void setDateEnd(Date dateEnd) {
        this.dateEnd = dateEnd;
    }

    @Override
    public String toString() {
        return "Booking{" + "userID=" + userID + ", roomID=" + roomID + ", dateStart=" + dateStart + ", dateEnd=" + dateEnd + '}';
    }
    
}
