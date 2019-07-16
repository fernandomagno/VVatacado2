class Home < SitePrism::Page

    element :campo_pesquisa, '#ctl00_TopBar_PaginaSistemaArea1_ctl18_txtBusca'
    element :botao_buscar, '#ctl00_TopBar_PaginaSistemaArea1_ctl18_btnOK'

    def pesquisarProdutos (produto)
        sleep 3
        campo_pesquisa.set produto
        botao_buscar.click     
    end

    def preencherForm (cnpj,senha)
        sleep 3
    campo_cnpj.set cnpj
    campo_senha.set senha
    end

end
