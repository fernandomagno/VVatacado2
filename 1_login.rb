class Login < SitePrism::Page
    set_url 'https://carrinho.vvatacado.com.br/Checkout?ReturnURL=/Cliente/MeuPerfil#login'

    element :campo_cnpj, '#Cnpj'
    element :campo_senha, '#Senha'
    element :botao_login, '#btnClienteLoginAtacado'

    def preencher_login_senha ()
        #wait_for_botao_login        
    campo_cnpj.set '67.449.715/0001-05'
    campo_senha.set '123456'    
    botao_login.click         
    end

    def preencherForm (cnpj,senha)
        sleep 3
    campo_cnpj.set cnpj
    campo_senha.set senha
    end
    
    def preencherFormTeste 
        sleep 3
    campo_cnpj.set '67.449.715/0001-05'
    campo_senha.set '123456'
    end

    def clickContinuar
        sleep 3
        botao_login.click
    end
end
