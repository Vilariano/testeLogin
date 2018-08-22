Dado("que tenho um usuario:") do |table|
    @email = table.rows_hash['email']
    @senha = table.rows_hash['senha']
    fazerLogin.load
end

Quando("faço login") do
    fazerLogin.log_user(@email, @senha)
end

Então("verifico se estou logado") do
    expect(page).to have_current_path('http://localhost/www/ituran/system/administrativo.php', url: true)
    expect(user_logado.nome_user.text).to eql 'Agnaldo Vilariano' 
end