          #language: pt

          Funcionalidade: Efetuar Compra - VV Atacado
          Como um consumidor final
          Quero efetuar login no site das VV Atacado
          Para poder fazer compras online

          @compra_boleto                    
          Esquema do Cenário: Efetuar compra
          Dado que eu esteja no login do vvatacado            
          Quando eu preencher os campos <cnpj>, <senha> validos
          Então clicar no botão Continuar
          E o sistema deve exibir uma <mensagem> de sucesso            
          E deve clicar no botão de home do site
          E pesquisa por <produto> e selecionar o produto pesquisado
          E clicar no botao de comprar
          E selecionar a forma de pagamento para finalizar
          E o sistema deve exibir um <alerta> de sucesso

          Exemplos:            
          | cnpj | senha  | mensagem | produto | alerta |
          | "67.449.715/0001-05" | "123456" | "Meu perfil" | "11641365" | "Seu pedido foi realizado com sucesso." |
          | "67.449.715/0001-05" | "123456" | "Meu perfil" | "11641408" | "Seu pedido foi realizado com sucesso." |
          #| "67.449.715/0001-05" | "123456" | "Meu perfil" | "1981224" | "Seu pedido foi realizado com sucesso." |
          #| "67.449.715/0001-05" | "123456" | "Meu perfil" | "4036215" | "Seu pedido foi realizado com sucesso." |

          @compra_boleto2                   
          Esquema do Cenário: Efetuar compra
          Dado que eu esteja no login do vvatacado            
          Quando eu preencher os campos <cnpj>, <senha> validos
          Então clicar no botão Continuar
          E o sistema deve exibir uma <mensagem> de sucesso            
          E deve clicar no botão de home do site
          E pesquisa por <produto> e selecionar o produto pesquisado          
          E clique no botão de comprar mais produtos
          E pesquisa por <produto> e selecionar o produto pesquisado           
          E clicar no botao de comprar          
          E selecionar a forma de pagamento para finalizar
          E o sistema deve exibir um <alerta> de sucesso

          Exemplos:            
          | cnpj | senha  | mensagem | produto | alerta |
          | "67.449.715/0001-05" | "123456" | "Meu perfil" | "12682080" | "Seu pedido foi realizado com sucesso." |                                       

          
          

          
