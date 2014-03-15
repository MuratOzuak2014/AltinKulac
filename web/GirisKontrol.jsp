<%-- 
    Document   : GirisKontrol
    Created on : Mar 9, 2014, 8:01:38 PM
    Author     : user
--%>

<%@page import="com.altinkulac.entity.Kullanici"%>
<%@page import="com.altinkulac.dao.KullaniciDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            body
            { 
                background: url(Image/Yuzme_06.jpg) no-repeat center center fixed; 
                -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
             }
        </style>
    </head>
    <body>
                <%
        boolean onaylandi = true;
        String email = request.getParameter("email");
        String sifre = request.getParameter("password");
        
        if(onaylandi == false){
            out.write("E-mail veya şifre yanlış");
        } else {
            KullaniciDAO kullaniciDao = new KullaniciDAO();
            Kullanici kullanici = kullaniciDao.getKullanici(email);
            if(kullanici == null){
                out.write("Kullanıcı bulunamadı");
            } else {
                if(kullanici.getSifre().equals(sifre)){
                    request.getSession(true).setAttribute("kullaniciBilgisi", kullanici);
                    request.getRequestDispatcher("/AnaForm.jsp").forward(request, response);
                } else {
                    out.write("Şifre yanlış");
                }
            }
        }
        %>
    </body>
</html>
