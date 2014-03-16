<%-- 
    Document   : KayitIslem
    Created on : Mar 15, 2014, 8:36:42 PM
    Author     : user
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.altinkulac.entity.Kullanici"%>
<%@page import="com.altinkulac.dao.KullaniciDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>        
    </head>
    <!--<body onload="document.location.href='SonForm.jsp'">-->
    <body>
        <style type="text/css">
            body
            { 
                background: url(Image/Yuzme_07.jpg) no-repeat center center fixed; 
                -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
            }
        </style>
        <%
            KullaniciDAO kullaniciDAO = new KullaniciDAO();

            if (kullaniciDAO.getKullanici(request.getParameter("email")) != null) {
                out.write("lütfen başka bir email kullanınız!");
            } else {

                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                Date dogumTarihi = sdf.parse(request.getParameter("bday"));

                Kullanici kullanici = new Kullanici();
                kullanici.setKullaniciAd(request.getParameter("name"));
                kullanici.setKullaniciSoyad(request.getParameter("surname"));
                kullanici.setDogumTarihi(dogumTarihi);
                kullanici.setEmail(request.getParameter("email"));
                kullanici.setSifre(request.getParameter("sifre1"));
                kullanici.setCinsiyet(request.getParameter("sex"));

                kullaniciDAO.createKullanici(kullanici);

                request.getServletContext().getRequestDispatcher("/SonForm.jsp").forward(request, response);
            }
        %>
    </body>
</html>
