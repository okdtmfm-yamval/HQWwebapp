<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="hqw.Country" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello Quantum World - 入力画面</title>

<style>
    body {
        font-family: "Yu Gothic", sans-serif;
        background: #f5f7fa;
        padding: 40px;
        color: #333;
        text-align: center; /* 全体の文字の中央寄せ */
    }
    
    h1{
       color: #2c3e50;
       margin-bottom: 10px;
    }
    
    .container {
        background: #fff;
        padding: 25px;
        border-radius: 8px;
        width: 400px;
        box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        margin: 0 auto; /* 中央揃え */
    }
    
    label{
        font-weight: bold;
    }
    
    input[type="text"],select{
        width: 200px;
        padding: 8px;
        margin-top: 5px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 16px;
    }
    
    button{
       width: 200px;
       padding: 10px;
       background: #3498db;
       color: white;
       border: none;
       border-radius: 25px;
       font-size: 16px;
       cursor: pointer;
    }
    
    button:hover{
        background: #2980b9;
        transform: scale(1.05);
    }

</style>

</head>
<body>

<div class="container">
    <h1>Hello Quantum World</h1>
    <p>あなたの情報を入力してください。</p>

    <form action="HQWServlet" method="post">
        <label>国名：</label>
        <select name="country">
        <%
           List<Country> countries = (List<Country>) request.getAttribute("countries");
           for (Country c : countries){
        %>
           <option value="<%= c.getName() %>"><%= c.getName() %></option>
        <%
           }
        %>
        
        </select><br><br>
        
        <label>苗字：</label>
        <input type="text" name="surname" placeholder="Yamada など"><br><br>
        
        <button type="submit">世界のどこかのだれかに出会う</button>
    </form>
</div>

</body>
</html>
