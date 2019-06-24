Este projeto usa:

Ruby  2.6.3 https://www.ruby-lang.org/pt/documentation/installation/
Chrome
Chromedriver: https://sites.google.com/a/chromium.org/chromedriver/downloads
Firefox
GeckoDriver: https://github.com/mozilla/geckodriver/releases .

Instalações:

Baixe os drivers e salve em um diretório de fácil acesso:

/usr/local/...

Após instalar o ruby, execute o seguinte comando, para instalar o gerenciador de pacotes do Ruby:

gem install bundler

Para instalar as dependências do projeto do Gemfile, execute o comando:

bundle install

Gems:
SitePrism
Link: https://github.com/site-prism/site_prism

Capybara
Link: https://github.com/teamcapybara/capybara

Cucumber
Link: https://cucumber.io/docs/installation/ruby/

Pry
Link: https://github.com/pry/pry

RSpec:
Link: https://github.com/rspec/rspec

Faker
Link: https://github.com/stympy/faker

Selenium Webdriver
Link: https://github.com/SeleniumHQ/selenium/tree/master/rb

Rodando os testes automatizados:

Para executar o testes devemos acessar a raíz do projeto.

Para rodar todos os testes de uma vez para digitar o seguinte comando:

bundle exec cucumber

Ou:

cucumber

Para executar os testes no FireFox, use o comando:
bundle exec cucumber -p firefox

Ou:

cucumber -p firefox

Para executar os testes no FireFox em modo headless use o comando:
bundle exec cucumber -p firefox_headless

Ou:

cucumber -p firefox_headless

Para a executar os testes no Chrome em modo headless, use o comando:
bundle exec cucumber -p chrome_headless

Ou:

cucumner -p chrome_headless

Para gerar o report,até mesmo no Jenkins, use o comando:
bundle exec cucumber -p chrome_headless -p report

Ou:

cucumber -p chrome_headless -p report

