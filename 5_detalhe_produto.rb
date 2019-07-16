class Detalhe < SitePrism::Page

        element :botao_comprar, '#ctl00_Conteudo_3020 #btnAdicionarCarrinho'
        element :botao_ok, '.popover-btn'

        def modal_exibicao
            sleep 3        
            botao_ok.click           
        end

        def clickComprar          
            sleep 3
            botao_comprar.click
        end

end
