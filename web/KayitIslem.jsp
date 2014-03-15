<%-- 
    Document   : KayitIslem
    Created on : Mar 15, 2014, 8:36:42 PM
    Author     : user
--%>

<%@page import="com.altinkulac.dao.KullaniciDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String kullaniciAd = request.getParameter("kullaniciAd");
        String kullaniciSoyad = request.getParameter("kullaniciSoyad");
        String dogumTarihi = request.getParameter("dogumTarihi");
        String email = request.getParameter("email");
        String sifre = request.getParameter("sifre1");
        String cinsiyet = request.getParameter("cinsiyet");
        
        KullaniciDAO kullaniciDAO = new KullaniciDAO();
        KullaniciDAO.createKullanici(kullanici);
        %>
</html>
