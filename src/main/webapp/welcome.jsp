<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello Quantum World - Welcome</title>

<style>
    body {
       font-family: "Yu Gothic", sans-serif;
       background: #f5f7fa;
       padding: 40px;
       color: #333;
       text-align: center; 
   }
   
   .containner {
       background: #fff;
       padding: 30px;
       border-radius: 8px;
       width: 450px;
       margin: 0 auto;
       box-shadow: 0 4px 10px rgba(0,0,0,0.1);
   }
   
   h1 {
       coroe: #2c3e50;
       margin-bottom: 10px;
   }
   
   p {
       line-hight: 1.7;
       margin-bottom: 20px;
   }
   
   button {
       width: 250px;
       padding: 12px;
       background: #3498db;
       color: white;
       border: none;
       border-radius: 4px;
       font-size: 18px;
       cursor: pointer;
   }
   
   button:hover {
       background: #2980b9;
   }

</style>
</head>
<body>

<div class="container">
    <h1>Hello Quantum World</h1>
    
    <p>
       Hello Quantum Worldは「出会い」と「握手」をテーマにした小さな世界です。<br>
       あなたと相手が握手をすると、<br>
       <strong>100万分の１の確率で”量子トンネル効果”＝すり抜けるが起きる</strong>と言われています。<br>
       ※実際は100万よりもはるかに大きな数字（＝天文学的な）でしか起きません。
    </p>
    
    <p>
       その奇跡の瞬間を、あなた自身の手で確かめてみませんか？
    </p>
    
    <form action="HQWServlet" method="get">
        <button type="submit">Let's Go HQW ✋</button>
    </form>

</div>


</body>
</html>