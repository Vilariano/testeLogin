class UserLogadoPage < SitePrism::Page
    element :nome_user, 'div[class="top"]'
    element :sair_login, '#error_bnt'

    def deslogar
        sair_login.click
    end
end