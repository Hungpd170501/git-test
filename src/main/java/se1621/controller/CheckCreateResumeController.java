/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package se1621.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import se1621.dao.ResumeDAO;
import se1621.dao.ResumeSkillDAO;
import se1621.dto.Resume;
import se1621.dto.ResumeSkill;

import java.io.IOException;
import java.util.List;

/**
 * @author HNGB
 */
@WebServlet(name = "CheckCreateResumeController", urlPatterns = {"/CheckCreateResumeController"})
public class CheckCreateResumeController extends HttpServlet {

    private static final String ERROR = "/view/create-resume.jsp";
    private static final String SUCCESS = "/view/create-resume.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            int studentID = Integer.parseInt(request.getParameter("studentID"));
            ResumeDAO resumeDAO = new ResumeDAO();
            int resumeID = resumeDAO.getResumeID(studentID);
            Resume resume = resumeDAO.getResumeByUserID(studentID);
            ResumeSkillDAO resumeSkillDAO = new ResumeSkillDAO();
            List<ResumeSkill> listStudentSkill = resumeSkillDAO.getStudentSkill(resumeID);
            if (resume != null) {
                request.setAttribute("RESUME", resume);
                request.setAttribute("LIST_STUDENTSKILL", listStudentSkill);
                url = SUCCESS;
            } else {
                resume = Resume.builder().address("").avatar("").dateOfBirth(null)
                        .fullName("").gender("").gmail("").gpa("")
                        .major("").overview("").phone("").website("").gitHub("").linkedIn("")
                        .build();
                request.setAttribute("RESUME", resume);
                request.setAttribute("LIST_STUDENTSKILL", listStudentSkill);
            }
        } catch (Exception e) {
            log("Error at SearchResumeIDController: " + e);
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
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
        processRequest(request, response);
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
        processRequest(request, response);
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