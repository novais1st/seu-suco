<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Seu Suco</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="background">
    <header>
        <div class="logo">
            <h1>Seu Suco</h1> <!-- Título do site -->
        </div><!--logo-->

        <div id="carrinho" class="carrinho">
            <a href="carrinho.jsp"><h2>Seu Carrinho</h2></a>
            <div id="total-carrinho" class="total-carrinho">Total do Carrinho: R$ 0.00</div>
            
            <input type="submit" value="Finalizar compra" onclick="window.location.href = 'carrinho.jsp';">
        </div>
    </header>

    <div class="Meio">
        <h1>NOVOS PRODUTOS</h1>
        <h1>PARA MAROMBEIROS</h1>
        <p>Seu Sucesso, Nossa Missão: Equipando Seu Melhor Eu!</p>
    </div>
</div>

<section>
    <h1>NOSSOS PRODUTOS</h1>
    <div class="Container-card-1" id="produtos-container">
        <!-- Os produtos serão carregados aqui dinamicamente -->
    </div>
</section>

<section class="cta">
    <div class="text-cta">
        <h6>DESCONTOS</h6>
        <h4>20% OFF<br>NOVOS PRODUTOS</h4>
        <a href="#" class="btn">Compre agora</a>
    </div><!--text-cta-->
</section><!--cta-->



<section class="Contato" id="Contato">
    <div class="meio-contato">
        <h3>Contato</h3>
        <a href="contato.html"><h5>Dúvidas ou sugestões? Entre em contato!</h5></a>
    </div>
</section>

<div class="last-text">
    <p>Copyright © 2023 All rights reserved | Seu Suco</p>
</div>


<script src="https://unpkg.com/scrollreveal"></script>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="script.js"></script>
</body>
</html>
