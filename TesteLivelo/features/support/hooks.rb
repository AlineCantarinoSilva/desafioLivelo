require "report_builder"
require "date"

Before do
    @login = LoginPage.new
    @produto = AddProdutoCarrinho.new
    page.current_window.resize_to(1366, 768)
end


After do |scenario|
    nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
    nome_cenario = nome_cenario.gsub(' ', '_').downcase!    
    temp_shot = page.save_screenshot("relatorio/screenshots/#{nome_cenario}.png")
    screenshot = Base64.encode64(File.open(temp_shot, "rb").read)
    embed(screenshot, "image/png", "Screenshot")
    #attach(screenshot, "image/png", "Screenshot")    
end

@current_date = DateTime.now


at_exit do
    ReportBuilder.configure do |config|
        config.input_path = "relatorio/features.json"
        config.report_path = "relatorio/features"
        config.report_types = [:html]
        config.report_title = "Livelo"
        config.compress_image = true
        config.additional_info = { "App" => "Web", "Data de execução" => @current_date }
    end
    ReportBuilder.build_report
end