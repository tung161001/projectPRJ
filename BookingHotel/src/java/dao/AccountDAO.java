/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
//            PreparedStatement pst = connection.prepareStatement(sql);
//            ResultSet rs = pst.executeQuery();
//            while (rs.next()) {
//                Account account = new Account(rs.getInt("id"), rs.getString("username"), rs.getString("password"),
//                         rs.getString("phone"), rs.getString("identityCard"));
//                listAccount.add(account);
//            }
        } catch (Exception e) {
            System.out.println("error getAll: AccountDAO");
        }
        return listAccount;
    }

    public static void main(String[] args) {
        AccountDAO accountDAO = new AccountDAO();
        System.out.println(accountDAO.getAll());
    }

}
