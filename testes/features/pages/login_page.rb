class FazLogin < SitePrism::Page
    set_url '/login.php'
    element :login_email, 'input[name=email]'
    element :login_senha, 'input[name=senha]'
    element :login_bt, 'input[name=btnLogin]'

    def log_user(email, senha)
        login_email.set email
        login_senha.set senha
        login_bt.click
    end
end