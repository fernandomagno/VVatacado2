class Pesquisa < SitePrism::Page
   
    element :detalhes, '.productDetails'
    element :detalhes1, '.name fn'

    def produtoDetalhes
        sleep 3
        detalhes.click        
    end

    def produto
        sleep 3
        detalhes1.click

    end
    
end
