<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Descrição do Produto</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="background">
        <header>
            <div class="logo">
                <h1>Seu Suco - Descrição do produto</h1>
            </div>

            <div id="carrinho" class="carrinho">
                <a href="carrinho.jsp"><h2>Seu Carrinho</h2></a>
                <div id="total-carrinho" class="total-carrinho">Total do Carrinho: R$ 0.00</div>
                <input type="submit" value="Finalizar compra" onclick="window.location.href = 'carrinho.jsp';">
            </div>
        </header>
    </div>

    <section class="produto-description">
        <div class="produto-info text-center">
            <img src="<%= "img/" + request.getParameter("id") + ".png" %>">
            <h1><%= request.getParameter("nome") %></h1>
            <h2>Valor: R$ <%= String.format("%.2f", Double.parseDouble(request.getParameter("valor")))%></h2>

            
            <input class="buy" type="submit" value="Continuar comprando" onclick="window.location.href = 'index.jsp';">
            <input class="buy" type="submit" value="Finalizar compra" onclick="window.location.href = 'carrinho.jsp';">
            <p>Descrição: <%= request.getParameter("descricao") %></p>
        </div>
    </section>

    <section class="cta">
      
    </section>

    <section class="Contato" id="Contato">
        <div class="meio-contato">
            <h3>Contato</h3>
            <h5>Nos envie uma mensagem</h5>
            <div class="icons">
                <a href="#"><i class='bx bxl-facebook-square'></i></a>
                <a href="#"><i class='bx bxl-instagram-alt'></i></a>
                <a href="#"><i class='bx bxl-twitter'></i></a>
            </div>
        </div>
    </section>

    <div class="last-text">
        <p>Copyright © 2023 All rights reserved | Seu Suco</p>
    </div>

    <script src="script.js"></script>
</body>
</html>
