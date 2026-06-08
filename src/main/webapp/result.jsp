<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello Quantum World - 結果</title>

<style>
    body {
        font-family: "Yu Gothic", sans-serif;
        background: #f5f7fa;
        padding: 40px;
        color: #333;
        text-align: center;
    }

    .container {
        background: #fff;
        padding: 25px;
        border-radius: 8px;
        width: 400px;
        margin: 0 auto;
        box-shadow: 0 4px 10px rgba(0,0,0,0.1);
    }

    h1 {
        color: #2c3e50;
        margin-bottom: 10px;
    }

    .info-box {
        background: #ecf0f1;
        padding: 10px;
        border-radius: 6px;
        margin-bottom: 15px;
        text-align: left;
    }

    .result-message {
        font-size: 20px;
        font-weight: bold;
        margin: 20px 0;
        color: #2980b9;
    }

    button {
        width: 200px;
        padding: 10px;
        background: #3498db;
        color: white;
        border: none;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
    }

    button:hover {
        background: #2980b9;
        transform: scale(1.05);
    }
    
    /* ▼ 手の基本スタイル ▼ */
    .hand {
        position: absolute;
        font-size: 40px;
        top: 20px;
    }
    
    /* ▼ 手の動き ▼ */
    .handshake-animation {
        position: relative;
        width: 250px;
        height: 80px;
        margin: 20px auto;
        overflow: hidden;
    }

    /* ▼ 通常握手（真ん中で重なる） ▼ */
    .left-hand.normal {
        left: 0;
        animation: leftMove 1.5s forwards;
    }

    .right-hand.normal {
        right: 0;
        animation: rightMove 1.5s forwards;
    }

    @keyframes leftMove {
        0% { left: 0; }
        100% { left: 100px; }
    }

    @keyframes rightMove {
        0% { right: 0; }
        100% { right: 100px; }
    }

    /* ▼ トンネル効果：通過する ▼ */
    .left-hand-pass.tunnel {
        left: 0;
        animation: leftPass 1.5s forwards;
    }

    .right-hand-pass.tunnel {
        left: 180px; /* 右側の初期位置を明示的に指定*/ 
        animation: rightPass 1.5s forwards;
    }

    @keyframes leftPass {
        0% { left: 0; }
        50% { left: 120px; }
       100% { left: 180px; }
    }

    @keyframes rightPass {
        0% { left: 180px; } /*右側からスタート*/
        50% { left: 120px; }
        100% { left: 0px; } /*左側へ抜ける*/
    }
    
    /* ▼ トンネル効果の光エフェクト ▼ */
    .tunnel-effect {
        animation: glow 1.2s infinite alternate;
        filter: drop-shadow(0 0 10px #00eaff);
    }

    @keyframes glow {
        0% { filter: drop-shadow(0 0 5px #00eaff); }
        100% { filter: drop-shadow(0 0 20px #00eaff); }
    }
    
</style>

</head>
<body>

<div class="container">
    <h1>Hello Quantum World</h1>
    <p>握手の結果が出ました</p>

    <!-- ▼ ハンドシェイクアニメーション ▼ -->
   <div class="handshake-animation">

    <!-- 通常握手（tunnel = false のときだけ表示） -->
    <c:if test="${not tunnel}">
        <div class="hand left-hand normal">🤝</div>
        <div class="hand right-hand normal">🤝</div>
    </c:if>

    <!-- トンネル効果（tunnel = true のときだけ表示） -->
    <c:if test="${tunnel}">
        <div class="hand left-hand-pass tunnel tunnel-effect">🤝</div>
        <div class="hand right-hand-pass tunnel tunnel-effect">🤝</div>
    </c:if>

    </div>
    
    <div class="info-box">
        <strong>あなた：</strong><br>
        苗字：${user.surname}<br>
        国：${user.country.name}
    </div>

    <div class="info-box">
        <strong>相手：</strong><br>
        苗字：${partner.surname}<br>
        国：${partner.country.name}
    </div>

    <div class="result-message">
        ${result}
    </div>

    <form action="HQWServlet" method="get">
        <button type="submit">もう一度試す</button>
    </form>
</div>

</body>
</html>
