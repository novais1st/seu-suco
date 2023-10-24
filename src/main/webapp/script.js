function exibirValorTotalCarrinho() {
    const carrinho = JSON.parse(sessionStorage.getItem('carrinho')) || [];
    const valorTotalCarrinho = carrinho.reduce((total, item) => total + item.valor, 0);
    const valorTotalCarrinhoElement = document.getElementById('total-carrinho');

    if (valorTotalCarrinhoElement) {
        valorTotalCarrinhoElement.textContent = `R$ ${valorTotalCarrinho.toFixed(2)}`;
    }
}

function limparCarrinho() {
    
    sessionStorage.removeItem('carrinho');

    
    atualizarCarrinho();

   
    window.location.href = 'index.jsp';
}
function adicionarAoCarrinho(id, nome, valor) {
    const produto = {
        id: id,
        nome: nome,
        valor: valor
    };

    let carrinho = JSON.parse(sessionStorage.getItem('carrinho')) || [];
    carrinho.push(produto);
    sessionStorage.setItem('carrinho', JSON.stringify(carrinho));

    alert('Produto adicionado ao carrinho.');

   
    const itemContadores = document.querySelectorAll('.item-count');
    itemContadores.forEach(contador => {
        contador.textContent = carrinho.length;
    });

    
    exibirValorTotalCarrinho();

    console.log(carrinho);
}

function atualizarCarrinho() {
    const carrinho = JSON.parse(sessionStorage.getItem('carrinho')) || [];
    const itensCarrinho = document.getElementById('itens-carrinho');
    let total = 0;

    
    itensCarrinho.innerHTML = '';

    
    carrinho.forEach(item => {
        const li = document.createElement('li');
        li.textContent = `${item.nome} - R$ ${item.valor.toFixed(2)}`;
        itensCarrinho.appendChild(li);
        total += item.valor;
    });
}


function carregarProdutos() {
    fetch('data/produtos.json')
        .then(response => response.json())
        .then(data => {
            const produtosContainer = document.getElementById('produtos-container');
            data.forEach(produto => {
                const card = document.createElement('div');
                card.className = 'cards';
                card.innerHTML = `
                    <a href="descricaoPadrao.jsp?id=${produto.id}&nome=${produto.nome}&descricao=${produto.descricao}&valor=${produto.valor}">
                        <img src="./img/${produto.id}.png">
                    </a>
                    <a href="descricaoPadrao.jsp?id=${produto.id}&nome=${produto.nome}&descricao=${produto.descricao}&valor=${produto.valor}">
                        <p>${produto.nome}</p>
                    </a>
                    <h5>R$ ${produto.valor.toFixed(2)}</h5>
                    <input class="buy" type="submit" value="Comprar" onclick="adicionarAoCarrinho(${produto.id}, '${produto.nome}', ${produto.valor})">
                `;
                produtosContainer.appendChild(card);
            });
        })
        .catch(error => {
            console.error('Erro ao carregar produtos:', error);
        });
}

function pegarCarrinho() {
    var carrinho = JSON.parse(sessionStorage.getItem('carrinho'));
    console.log(carrinho);
}

console.log('okk');
window.addEventListener('load', carregarProdutos);
window.addEventListener('load', exibirValorTotalCarrinho);
