class AddProdutoCarrinho
    
    include Capybara::DSL

    def acessar_use_seus_pontos
        find('#span-first-level-menu-1').hover
    end

    def acessar_com_produtos
        find('#span-second-level-menu-1-1').hover
    end
    
    def acessar_tecnologia
        find('#span-third-level-menu-1-1-3').hover
    end
    
    def acessar_casa
        find('#span-third-level-menu-1-1-1').hover
    end

    def acessar_eletronicos
        find('#span-fourth-level-menu-1-1-3-3').click
    end

    def acessar_eletroportateis
        find('#span-fourth-level-menu-1-1-1-1').click
    end

    def add_produto_fone_ouvido
        find('#CC-product-grid-image-LVL16278613-00').click
    end
    
    def add_produto_espremedor
        find('#CC-product-list-name-LVL187861-00').click
    end

    def click_adicionar_carrinho
        click_button "Adicionar ao carrinho"
    end

    def escolher_voltagem_110
        select('110v', from: 'CC-prodDetails-sku-type_other_v_voltage')
    end
    
    def continuar_comprando
        click_link "Continuar Comprando"
    end
    
    def acessar_moda
        find('#span-third-level-menu-1-1-5').hover
    end
    
    def acessar_calcado
        find('#span-fourth-level-menu-1-1-5-3').click
    end
    
    def add_produto_sandalia
        find('#CC-product-grid-image-LVL23262694-02').click
    end
    
    def escolher_tamanho
        select('37', from: 'CC-prodDetails-sku-type_clothes_v_size')
    end
    
    def escolher_cor
        select('preto', from: 'CC-prodDetails-sku-type_clothes_v_color')
    end

end