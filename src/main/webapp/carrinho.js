// Função para atualizar o carrinho
function atualizarCarrinho() {
    const carrinho = JSON.parse(sessionStorage.getItem('carrinho')) || [];
    const itensCarrinho = document.getElementById('itens-carrinho');
    let total = 0;

    // Limpe a lista de itens no carrinho
    itensCarrinho.innerHTML = '';

    // Atualize a lista de itens no carrinho
    carrinho.forEach(item => {
        const li = document.createElement('li');
        li.textContent = `${item.nome} - R$ ${item.valor.toFixed(2)}`;
        itensCarrinho.appendChild(li);
        total += item.valor;
    });

    // Atualize o valor total do carrinho
    const totalCarrinho = document.getElementById('total-carrinho');
    totalCarrinho.textContent = total.toFixed(2);
}

// Função para exibir o valor total do carrinho
function exibirValorTotalCarrinho() {
    const carrinho = JSON.parse(sessionStorage.getItem('carrinho')) || [];
    const valorTotalCarrinho = carrinho.reduce((total, item) => total + item.valor, 0);
    const totalCarrinho = document.getElementById('total-carrinho');

    if (totalCarrinho) {
        totalCarrinho.textContent = valorTotalCarrinho.toFixed(2);
    }
}
