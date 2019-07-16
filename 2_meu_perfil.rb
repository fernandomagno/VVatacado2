class Perfil < SitePrism::Page
   
    element :logo_home, '.headerContent .logo'

    def carregarHome
        sleep 3
        logo_home.click
    end

end
