package br.com.seusuco.web;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/CarrinhoServlet")
public class CarrinhoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        // Recupere o ArrayList "carrinho" da sessão ou crie um se não existir
        ArrayList<String> attribute = (ArrayList<String>) session.getAttribute("carrinho");
		ArrayList<String> carrinho = attribute;
        if (carrinho == null) {
            carrinho = new ArrayList<>();
        }

        // Obtenha o ID do produto que você deseja adicionar ao carrinho a partir dos parâmetros da solicitação
        String produtoId = request.getParameter("produtoId");

        // Adicione o ID do produto ao carrinho
        carrinho.add(produtoId);

        // Atualize a sessão com o carrinho atualizado
        session.setAttribute("carrinho", carrinho);

        // Redirecione de volta para a página anterior (ou qualquer outra página que você deseje)
        response.sendRedirect(request.getHeader("Referer"));
    }
}
