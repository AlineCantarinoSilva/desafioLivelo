#language :pt

Funcionalidade: Adicionar um produto ao carrinho
                Como usuário do site Livelo
                Desejo adicionar um produto ao carrinho de compras

@add_produto_sucesso
Cenario: Adicionar um produto ao carrinho de compras com sucesso

        Dado que acesso o site da Livelo
        Quando adiciono um produto ao carrinho
        Então é adicionado ao carrinho exibindo o botão "FECHAR PEDIDO"


@add_varios_produto_sucesso
Cenario: Adicionar vários produtos ao carrinho de compras com sucesso

        Dado que acesso o site da Livelo
        Quando adiciono vários produtos ao carrinho
        Então é adicionado ao carrinho exibindo o botão "FECHAR PEDIDO"




