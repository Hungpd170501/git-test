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
import se1621.dto.Disputes;
import se1621.dto.JobApplication;
import se1621.utils.DBUtils;

/**
 *
 * @author HNGB
 */
public class DisputeDAO {

    private static final String CHECK_DUPLICATE_DISPUTE = "SELECT disputeID FROM tblDisputes WHERE userID = ? and jobApplicationID = ?";
    private static final String CREATE_DISPUTE = "INSERT INTO tblDisputes (title, message, jobApplicationID, userID) VALUES (?,?,?,?)";
    private static final String GET_LIST_DISPUTE = "SELECT d.disputeID,ja.resumeID,r.userID as studentID,j.disputeStatus, d.title, d.message, d.jobApplicationID, d.userID as creatorID, d.createdDate, d.lastModifiedDate, d.disputeStatus as disStatus "
            + "FROM (((tblDisputes d left join tblJobApplications ja on ja.jobApplicationID = d.jobApplicationID) left join  "
            + "tblJobs j on j.jobID = ja.jobID) "
            + "left join tblResumes as r on r.resumeID = ja.resumeID ) "
            + "WHERE r.userID = ? AND j.disputeStatus = 1";
    private static final String INSERT_REASON_CANCEL = "UPDATE tblDisputes SET reasonCancelDispute = ? WHERE disputeID = ?";
    private static final String GET_DISPUTE_BY_DISPUTEID = "SELECT title, message, jobApplicationID, userID, createdDate, lastModifiedDate, reasonCancelDispute "
            + " FROM tblDisputes WHERE disputeID = ?";
    private static final String DELETE_DISPUTE = "DELETE FROM tblDisputes WHERE userID = ? and jobApplicationID = ?";
    private Connection conn;
    private PreparedStatement preStm;
    private ResultSet rs;

    public boolean checkDuplicateDispute(int userID, int jobApplicationID) throws Exception {
        boolean check = false;
        conn = null;
        preStm = null;
        rs = null;
        try {
            conn = DBUtils.getInstance().getConnection();
            if (conn != null) {
                preStm = conn.prepareStatement(CHECK_DUPLICATE_DISPUTE);
                preStm.setInt(1, userID);
                preStm.setInt(2, jobApplicationID);
                rs = preStm.executeQuery();
                if (rs.next()) {
                    check = true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (preStm != null) {
                preStm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;
    }

    public boolean createDispute(Disputes dispute) throws SQLException, ClassNotFoundException {
        boolean check = false;
        conn = null;
        preStm = null;
        try {
            conn = DBUtils.getInstance().getConnection();
            if (conn != null) {
                preStm = conn.prepareStatement(CREATE_DISPUTE);
                preStm.setString(1, dispute.getTitle());
                preStm.setString(2, dispute.getMessage());
                preStm.setInt(3, dispute.getJobApplication().getJobApplicationID());
                preStm.setInt(4, dispute.getUser().getUserID());
                check = preStm.executeUpdate() > 0;
            }
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

    public List<Disputes> getListDisputeByUserID(int userID) throws SQLException {
        try {
            conn = DBUtils.getInstance().getConnection();
            if (conn != null) {
                preStm = conn.prepareStatement(GET_LIST_DISPUTE);
                preStm.setInt(1, userID);
                rs = preStm.executeQuery();
                List<Disputes> listDispute = new ArrayList<>();
                while (rs.next()) {
                    int disputeID = rs.getInt("disputeID");
                    String title = rs.getString("title");
                    String message = rs.getString("message");
                    int jobApplicationID = rs.getInt("jobApplicationID");
                    Date createdDate = rs.getDate("createdDate");
                    Date lastModifiedDate = rs.getDate("lastModifiedDate");
                    int disStatus = rs.getInt("disStatus");
                    Disputes dispute = Disputes.builder()
                            .disputeID(disputeID)
                            .title(title)
                            .message(message)
                            .jobApplication(JobApplication.builder().jobApplicationID(jobApplicationID).build())
                            .createdDate(createdDate)
                            .lastModifiedDate(lastModifiedDate)
                            .disStatus(disStatus)
                            .build();
                    listDispute.add(dispute);
                }
                return listDispute;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (preStm != null) {
                preStm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return null;
    }

    public boolean InsertReasonCancel(String message, int disputeID) throws SQLException {
        boolean check = false;
        try {
            conn = DBUtils.getInstance().getConnection();
            if (conn != null) {
                preStm = conn.prepareStatement(INSERT_REASON_CANCEL);
                preStm.setString(1, message);
                preStm.setInt(2, disputeID);
                check = preStm.executeUpdate() > 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (preStm != null) {
                preStm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;
    }

    public Disputes getDisputeByDisputeID(int disputeID) throws SQLException {
        Disputes dispute = null;
        try {
            conn = DBUtils.getInstance().getConnection();
            if (conn != null) {
                preStm = conn.prepareStatement(GET_DISPUTE_BY_DISPUTEID);
                preStm.setInt(1, disputeID);
                rs = preStm.executeQuery();
                if (rs.next()) {
                    String title = rs.getString("title");
                    String message = rs.getString("message");
                    int jobApplicationID = rs.getInt("jobApplicationID");
                    String reason = rs.getString("reasonCancelDispute");
                    Date createdDate = rs.getDate("createdDate");
                    Date lastModifiedDate = rs.getDate("lastModifiedDate");
                    dispute = Disputes.builder()
                            .disputeID(disputeID)
                            .title(title)
                            .message(message)
                            .jobApplication(JobApplication.builder().jobApplicationID(jobApplicationID).build())
                            .reasonCancelDispute(reason)
                            .createdDate(createdDate)
                            .lastModifiedDate(lastModifiedDate)
                            .build();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (preStm != null) {
                preStm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return dispute;
    }

    public boolean deleteDispute(int userID, int jobApplicationID) throws SQLException {
        boolean check = false;
        try {
            conn = DBUtils.getInstance().getConnection();
            preStm = conn.prepareStatement(DELETE_DISPUTE);
            preStm.setInt(1, userID);
            preStm.setInt(2, jobApplicationID);
            check = preStm.executeUpdate() > 0;
        } catch (SQLException e) {
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
