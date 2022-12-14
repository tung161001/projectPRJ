/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.BookingDAO;
import dao.RoomDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Date;
import java.util.ArrayList;
import model.Account;
import model.Room;

/**
 *
 * @author thang
 */
public class bookingController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet bookingController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet bookingController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RoomDAO RoomDAO = new RoomDAO();
        ArrayList<Room> listBooking = RoomDAO.getAll();
        request.setAttribute("listRoom", listBooking);
        request.getRequestDispatcher("booking.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        BookingDAO bookingDAO = new BookingDAO();
        Account account = (Account) session.getAttribute("account");
        String dateRange = request.getParameter("daterange").trim();
        String[] arrDateRange = dateRange.split("-");
        String[] strDateStart = arrDateRange[0].split("/");
        String[] strDateEnd = arrDateRange[1].split("/");
        int RoomID = Integer.parseInt(request.getParameter("roomID"));
        Date dateStart = Date.valueOf(strDateStart[2].trim() + "-" + strDateStart[0].trim() + "-" + strDateStart[1].trim());
        Date dateEnd = Date.valueOf(strDateEnd[2].trim() + "-" + strDateEnd[0].trim() + "-" + strDateEnd[1].trim());
        int checkCreate = bookingDAO.create(account.getId(), RoomID, dateStart, dateEnd);
        System.out.println(checkCreate);
        if (checkCreate == -1) {
            request.setAttribute("error", "internal");
            request.getRequestDispatcher("booking.jsp").forward(request, response);
        } else if (checkCreate == 0) {
            request.setAttribute("success", "failed");
            request.getRequestDispatcher("booking.jsp").forward(request, response);
        }else{
           request.setAttribute("success", "true");
           request.getRequestDispatcher("booking.jsp").forward(request, response);
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
