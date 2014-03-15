<%-- 
    Document   : AnaForm
    Created on : 02.Mar.2014, 19:47:03
    Author     : user
--%>

<%@page import="java.util.Date"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            body
            { 
                background: url(Image/Yuzme_04.jpg) no-repeat center center fixed; 
                -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
            }
            #registerPanel{
                position:fixed; 

                top:50%;  

                left:50%;  

                width: 800px;

                height: 700px;

                margin-left: -400px;

                margin-top: -10px;
            }        
        </style>
        <script type="text/javascript">

            function sifreKontrol() {

                var sifre1 = document.getElementById("sifre1").value;
                var sifre2 = document.getElementById("sifre2").value;
                
                if(sifre1 != sifre2){
                    alert("Girilen şifreler biririnden farklı!");
                    return false;
                }
                
                return true;

            }

        </script>
    </head>
    <body>
        <div id="registerPanel">
            <form onsubmit="return sifreKontrol();" action="KayitIslem.jsp" method="POST"> 
            <table border="1" style="margin: 0 auto;">            
                <tr>
                    <td>Name : </td>
                    <td><input type="text" name="name" /></td>
                </tr>
                <tr>
                    <td>Surname : </td>
                    <td><input type="text" name="surname" /></td>
                </tr>
                <tr>
                    <td>Birth date : </td>
                    <td><input type="date" name="bday"></td>
                </tr>
                <tr>
                    <td>E-mail : </td>
                    <td><input type="text" name="email" /></td>
                </tr>
                <tr>
                    <td>Şifre : </td>
                    <td><input type="password" name="sifre1" id="sifre1" /></td>
                </tr>
                <tr>
                    <td>Şifre tekrar : </td>
                    <td><input type="password" name="sifre2" id="sifre2"/></td>
                </tr>
                <tr>
                    <td>Cinsiyet : </td>
                    <td>
                        <select>
                            <option value="">Seçiniz</option>
                            <option value="E">Erkek</option>
                            <option value="B">Bayan</option>
                            <option value="D">Diğer</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="button" onclick="document.location.href = 'GirisForm.jsp'" value="Back" style="float:left;" />
                        <input type="submit" value="Continue" style="float:right;" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
