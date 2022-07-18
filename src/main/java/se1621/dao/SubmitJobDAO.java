/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package se1621.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import se1621.dto.SubmitJob;
import se1621.utils.DBUtils;

/**
 *
 * @author lehad
 */
public class SubmitJobDAO {
    private final static String SUBMIT_JOB = "INSERT INTO tblSubmitJob (jobApplicationID, messageSubmit, jobFile, submitJobStatus) "
            + "VALUES (?,?,?,1)";
    Connection conn;
    PreparedStatement preStm;
    private ResultSet rs;
    public boolean submitJob(SubmitJob submitJob) throws SQLException {
        boolean check = false;
        conn = null;
        preStm = null;
        try {
            conn = DBUtils.getInstance().getConnection();
            if (conn != null) {
                preStm = conn.prepareStatement(SUBMIT_JOB);
                preStm.setInt(1, submitJob.getJobApplicationID());
                preStm.setString(2, submitJob.getMessageSubmit());
                preStm.setString(3, submitJob.getJobFile());
                check = preStm.executeUpdate() > 0 ? true : false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {

            if (preStm != null) {
                preStm.close();
            }

            if (conn != null) {

                conn.close();
            }
        }
        return check;
    }
}
