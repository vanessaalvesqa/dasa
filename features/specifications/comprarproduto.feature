# language: pt

@comprarproduto
Funcionalidade: Comprar produto
Cenario: Fluxo de compra com cadastro

Dado que eu realize uma compra criando um novo cadastro
Quando finalizar a criação do novo usuário e seguir o fluxo
Então a compra é efetivada com sucesso e a seguinte mensagem será exibida "Your order on My Store is complete."