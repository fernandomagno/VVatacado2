class Resumo < SitePrism::Page

    element :botao_concluir, '.boxResumoTopo .boxResumoBtb'  

    def clickConcluirResumoCompra
        sleep 3
        botao_concluir.click
    end

end
