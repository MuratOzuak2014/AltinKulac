/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.altinkulac.dao;

import com.altinkulac.entity.Kullanici;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author user
 */
public class KullaniciDAO {

    public Kullanici getKullanici(String email) throws Exception {
        Connection con = null;
        Kullanici kullanici = null;
        try {
            String sqlStr = "select * from kullanici where email=?";
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/altinkulac?zeroDateTimeBehavior=convertToNull", "root", "");
            PreparedStatement pstmt = con.prepareStatement(sqlStr);
            pstmt.setString(1, email);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                kullanici = new Kullanici();
                kullanici.setKullaniciId(rs.getInt("kullanici_id"));
                kullanici.setKullaniciAd(rs.getString("kullanici_ad"));
                kullanici.setKullaniciSoyad(rs.getString("kullanici_soyad"));                
                kullanici.setDogumTarihi(new Date(rs.getDate("dogum_tarihi").getTime()));
                kullanici.setEmail(rs.getString("email"));                
                kullanici.setSifre(rs.getString("sifre"));
                kullanici.setCinsiyet(rs.getString("cinsiyet"));
            }
        } catch (ClassNotFoundException ex) {
            throw new Exception(ex);
        } catch (SQLException ex) {
            throw new Exception(ex);
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    throw new Exception(ex);
                }
            }
        }
        return kullanici;
    }

    public int createKullanici(Kullanici kullanici) throws Exception {
        java.sql.Date dogumTarihi = new java.sql.Date(kullanici.getDogumTarihi().getTime());
        Connection con = null;
        int updateCount = -1;
        try {
            String insertSql = "insert into kullanici (kullanici_ad,kullanici_soyad,cinsiyet,dogum_tarihi,email,sifre) values (?,?,?,?,?,?)";
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/altinkulac?zeroDateTimeBehavior=convertToNull", "root", "");
            PreparedStatement pstmt = con.prepareStatement(insertSql);
            pstmt.setString(1, kullanici.getKullaniciAd());
            pstmt.setString(2, kullanici.getKullaniciSoyad());
            pstmt.setString(3, kullanici.getCinsiyet());            
            pstmt.setDate(4, dogumTarihi);
            pstmt.setString(5, kullanici.getSifre());
            updateCount = pstmt.executeUpdate();

        } catch (ClassNotFoundException ex) {
            throw new Exception("Hata oluştu");
        } catch (SQLException ex) {
            throw new Exception("Hata oluştu");
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(KullaniciDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return updateCount;

    }

    public void updateKullanci() {

    }

    public void deleteKullanici() {

    }

}
