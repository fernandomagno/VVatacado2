class Carrinho < SitePrism::Page
   
    element :botao_comprar, '.bt.btconcluir'
    element :botao_comprar_mais, '#btnComprarMaisProdutos'    

    def clickConcluirCompra
        sleep 3
        botao_comprar.click  
    end  

    def clickComprarMais
        sleep 3
        botao_comprar_mais.click        
    end



end
