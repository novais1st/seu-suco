<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style_login.css">
    <meta charset="UTF-8">
    <title>LOGIN</title>
</head>
<body>
    <form action="login.jsp" method="POST">

        <h2>Para finalizar a compra <br>efetue Login</h2>

        <label for="username">Nome de Usuário:</label>
        <input type="text" id="username" name="username" required>

        <label for="password">Senha:</label>
        <input type="password" id="password" name="password" required>

        <input type="submit" value="Entrar">
    </form>

    <%@ page import="java.io.FileReader" %>
    <%@ page import="org.json.simple.JSONArray" %>
    <%@ page import="org.json.simple.JSONObject" %>
    <%@ page import="org.json.simple.parser.JSONParser" %>

    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean authenticated = false;

        try {
        	String jsonFile = getServletContext().getRealPath("/data/usuarios.json");

            System.out.print(jsonFile);
            JSONParser parser = new JSONParser();
            JSONArray users = (JSONArray) parser.parse(new FileReader(jsonFile));

            for (Object userObj : users) {
                JSONObject user = (JSONObject) userObj;
                String nome = (String) user.get("nome");
                String senha = (String) user.get("senha");

                if (username.equals(nome) && password.equals(senha)) {
                    authenticated = true;
                    break;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (authenticated) {
        	%>
            <script>
                alert("Login efetuado com sucesso! Clique OK para prosseguir com o pagamento.");
                window.location.href = "pagamento.jsp";
            </script>
        <%
        } else if (username != null && password != null) {
    %>
        <p>Credenciais incorretas. Tente novamente.</p>
    <%
        }
    %>
</body>
</html>
