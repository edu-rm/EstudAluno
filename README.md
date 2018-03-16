Estudaluno
================

Instalar a linguagem ruby e o rails
------------

1. gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
2. \curl -sSL https://get.rvm.io | bash
3. \curl -sSL https://get.rvm.io | bash -s stable --ruby
4. \curl -sSL https://get.rvm.io | bash -s stable --rails

Instalar o GIT
------------

sudo apt-get install git

Clonar o código fonte
------------

git clone https://github.com/fabricioifc/EstudAluno.git

Instalar o postgresql
------------

sudo apt-get install postgresql

Baixar as GEMS
------------

bundle install

Executar a aplicação
------------

rails s
