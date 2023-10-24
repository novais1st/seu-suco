<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="carrinho.css">
<meta charset="UTF-8">
<title>Carrinho de compras</title>
</head>
<body>
    <div id="carrinho" class="carrinho">
        <h2>Seu Carrinho</h2>
        <ul id="itens-carrinho">
            
        </ul>
        <p>Total: R$ <span id="total-carrinho">0.00</span></p>
        <button onclick="limparCarrinho()">Limpar Carrinho</button>
        <input type="submit" value="Continuar comprando" onclick="window.location.href = 'index.jsp';">
        <input type="submit" value="Finalizar compra" onclick="window.location.href = 'login.jsp';">
        
        
    </div>

    <!-- Inclua os arquivos JavaScript -->
    <script src="script.js"></script>
    <script src="script2.js"></script>

    <!-- Chame a função para atualizar o carrinho ao carregar a página -->
    <script>
        atualizarCarrinho();
    </script>
</body>
</html>
