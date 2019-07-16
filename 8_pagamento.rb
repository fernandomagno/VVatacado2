class Pagamento < SitePrism::Page

    element :opcaoBoleto, 'a[title="Boleto bancário"]'
    element :concluirCompra, 'input[data-id="btnFinalizar"]'

    def finalizar_compra_boleto        
        sleep 5
        opcaoBoleto.click        
        sleep 5
        concluirCompra.click     
        sleep 10
    end

end
