package br.com.seusuco.web;



import java.io.IOException;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ObjectWriter;

public class ProdutosDAO extends HttpServlet {
    private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
           
            int id = Integer.parseInt(request.getParameter("id"));
            String nome = request.getParameter("nome");
            String descricao = request.getParameter("descricao");
            double valor = Double.parseDouble(request.getParameter("valor"));
            System.out.println("json atualizado");//debug
            
            Produto produto = new Produto(id, nome, descricao, valor);

            
            ObjectMapper objectMapper = new ObjectMapper();
            List<Produto> produtos = objectMapper.readValue(new FileReader("data/produtos.json"), new TypeReference<List<Produto>>() {});

           
            produtos.add(produto);
            System.out.println("json atualizado");
           
            ObjectWriter objectWriter = objectMapper.writerWithDefaultPrettyPrinter();
            objectWriter.writeValue(new FileWriter("data/produtos.json"), produtos);

            
            response.sendRedirect("/pagamento.jsp");
        } catch (Exception e) {
            

        }
    }
}
