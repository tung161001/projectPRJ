/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Account;

/**
 *
 * @author dell
 */
public class AccountDAO {

    public ArrayList<Account> getAll() {
        ArrayList<Account> listAccount = new ArrayList<>();
        try {
            BaseDAO baseDAO = new BaseDAO();

            String sql = "SELECT id,username,password,phone,identityCard FROM account";
            Connection connection = baseDAO.connection;
            PreparedStatement pst = connection.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Account account = new Account(rs.getInt("id"), rs.getString("username"), rs.getString("password"),
                        rs.getString("phone"), rs.getString("identityCard"));
                listAccount.add(account);
            }
        } catch (Exception e) {
            System.out.println("error getAll: AccountDAO");
        }
        return listAccount;
    }

    public Account getByUsernamePassword(String username, String password) {
        Account account = null;
        try {
            String sql = "select id , username, password "
                    + "from account where username = ? and password = ?";
            BaseDAO baseDAO = new BaseDAO();
            Connection connection = baseDAO.connection;
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, username);
            pst.setString(2, password);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                account = new Account(rs.getInt("id"), rs.getString("username"),
                        rs.getString("password"));
            }
        } catch (SQLException e) {
            System.err.println("error getByUsernamePassword: AccountDAO " + e);
        }
        return account;
    }

    public int create(String username ,String password , String phone , String identityCard ){
        Account account = null;
        try{
        String sql = "insert into account(username,password,phone,identityCard)\n" +
"                   values(?,?,?,?)";
            BaseDAO baseDAO = new BaseDAO();
            Connection connection = baseDAO.connection;
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, username);
            pst.setString(2, password);
            pst.setString(3, phone);
            pst.setString(4, identityCard);
            return pst.executeUpdate();
        } catch (SQLException e) {
            System.err.println("error create: AccountDAO " + e);
        }
        return -1;
    }
    
    
    
    public static void main(String[] args) {
        AccountDAO accountDAO = new AccountDAO();
        System.out.println(accountDAO.create("thang1a", "123","123132a1","121545a45"));
    }

}
