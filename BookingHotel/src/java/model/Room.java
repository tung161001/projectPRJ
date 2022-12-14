/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author thang
 */
public class Room {
    int roomId;
    String name;
    int qualityID;
    int bed;
    int price;
    int area;

    public Room(int roomId, String name, int qualityID, int bed, int price, int area, String image, String description) {
        this.roomId = roomId;
        this.name = name;
        this.qualityID = qualityID;
        this.bed = bed;
        this.price = price;
        this.area = area;
        this.image = image;
        this.description = description;
    }

    public int getQualityID() {
        return qualityID;
    }

    public void setQualityID(int qualityID) {
        this.qualityID = qualityID;
    }

    public int getArea() {
        return area;
    }

    public void setArea(int area) {
        this.area = area;
    }
    String image;
    String description;

    public Room(int roomId, String name, int qualityID, int bed, int price, String image, String description) {
        this.roomId = roomId;
        this.name = name;
        this.qualityID = qualityID;
        this.bed = bed;
        this.price = price;
        this.image = image;
        this.description = description;
    }

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    @Override
    public String toString() {
        return "Room{" + "roomId=" + roomId + ", name=" + name + ", qualityID=" + qualityID + ", bed=" + bed + ", price=" + price + ", image=" + image + ", description=" + description + '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getQuantityID() {
        return qualityID;
    }

    public void setQuantityID(int qualityID) {
        this.qualityID = qualityID;
    }

    public int getBed() {
        return bed;
    }

    public void setBed(int bed) {
        this.bed = bed;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
}
