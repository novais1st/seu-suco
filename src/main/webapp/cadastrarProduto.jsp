<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastrar produto</title>
</head>
<body>
<form action="/seu-suco/ProdutosDAO" method="post">
    <input type="text" name="id" placeholder="ID do Produto"><br>
    <input type="text" name="nome" placeholder="Nome do Produto"><br>
    <input type="text" name="descricao" placeholder="Descrição do Produto"><br>
    <input type="text" name="valor" placeholder="Valor do Produto"><br>
    <input type="submit" value="Adicionar Produto"><br>
</form>

</body>
</html>