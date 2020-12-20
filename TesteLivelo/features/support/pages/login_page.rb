class LoginPage
    include Capybara::DSL
    def go
        visit 'https://www.livelo.com.br/home'
    end
    
end