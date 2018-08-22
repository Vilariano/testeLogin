Dir[File.join(File.dirname(__FILE__),
              '../pages/*_page.rb')].each { |file| require file}

module Pages
    def fazerLogin
        @fazerLogin ||= FazLogin.new
    end

    def user_logado
        @user_logado ||= UserLogadoPage.new
    end
end