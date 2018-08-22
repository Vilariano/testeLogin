# language:pt
Funcionalidade: Fazer Login
    Sendo um usuario
    Posso fazer login
    Para acessar a area restrita a usuarios

#@deslogar_user =  Faz logout depous de o cenario e executado e validado
@deslogar_user
Cenario: Fazer Login
    Dado que tenho um usuario:
        |email|agnaldo@mail.com|
        |senha|Apolo@06#|
    Quando faço login
    Então verifico se estou logado