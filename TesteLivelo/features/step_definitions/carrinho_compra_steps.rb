Dado('que acesso o site da Livelo') do                                                    
    @login.go
end                                                                                
                                                                                     
Quando('adiciono um produto ao carrinho') do                                       
        
    @produto.acessar_use_seus_pontos
    @produto.acessar_com_produtos
    @produto.acessar_tecnologia
    @produto.acessar_eletronicos
    @produto.add_produto_fone_ouvido
    @produto.click_adicionar_carrinho
        
end                                                                                
                                                                                     
Então('é adicionado ao carrinho exibindo o botão {string}') do |fecharPedido|             
    expect(page).to have_content(fecharPedido)
end                                                                                 
                                                                                        
Quando('adiciono vários produtos ao carrinho') do                                   
    
    @produto.acessar_use_seus_pontos
    @produto.acessar_com_produtos
    @produto.acessar_casa
    @produto.acessar_eletroportateis
    @produto.add_produto_espremedor
    @produto.escolher_voltagem_110
    @produto.click_adicionar_carrinho
    @produto.continuar_comprando    
    @produto.acessar_use_seus_pontos
    @produto.acessar_com_produtos
    @produto.acessar_moda
    @produto.acessar_calcado
    @produto.add_produto_sandalia
    @produto.escolher_tamanho
    @produto.escolher_cor
    @produto.click_adicionar_carrinho

end                                                                                 
                                                                                     