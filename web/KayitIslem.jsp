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
        String kullaniciAd = request.getParameter("kullaniciAd");
        String email = request.getParameter("email");
        String sifre = request.getParameter("sifre1");
        
        KullaniciDAO kullaniciDAO = new KullaniciDAO();
        KullaniciDAO.createKullanici(kullanici);
        %>
</html>
