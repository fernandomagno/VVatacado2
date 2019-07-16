    Dado("que eu esteja no login do vvatacado") do
        @login = Login.new
        @login.load
    end    

    Quando("eu preencher os campos {string}, {string} validos") do |cnpj, senha|
        @login.preencherForm cnpj, senha
      end   
    
    Então("clicar no botão Continuar") do    
        @login.clickContinuar
    end   
    
    Então("o sistema deve exibir uma {string} de sucesso") do |mensagem|
        expect(page).to have_content mensagem 
      end

    Então("deve clicar no botão de home do site") do
        @perfil = Perfil.new
        @perfil.carregarHome
    end  
    
    Então("pesquisa por {string} e selecionar o produto pesquisado") do |produto|
        @home = Home.new
        @home.pesquisarProdutos produto
        @pesquisa = Pesquisa.new
        @pesquisa.produtoDetalhes
        @detalhe = Detalhe.new
        @detalhe.modal_exibicao
        @detalhe.clickComprar
      end   

      Então("clique no botão de comprar mais produtos") do
        @carrinho = Carrinho.new
        @carrinho.clickComprarMais
      end
    
    Então("clicar no botao de comprar") do
        @carrinho = Carrinho.new
        @carrinho.clickConcluirCompra
    end
    
    Então("selecionar a forma de pagamento para finalizar") do
        @resumo = Resumo.new
        @resumo.clickConcluirResumoCompra
        @pagamento = Pagamento.new
        @pagamento.finalizar_compra_boleto        
    end
    
    Então("o sistema deve exibir um {string} de sucesso") do |alerta|
        expect(page).to have_content alerta 
      end
