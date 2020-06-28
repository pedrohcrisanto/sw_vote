## Configuração

Clone o projeto

```sh
$ git clone https://github.com/pedrohcrisanto/sw_vote.git
```

Instale as dependências
```sh
$ cd /sw_vote/
$ bundle install
```

Crie o banco, migre as tabelas
```sh
$ rails db:create db:migrate
```

Rode a aplicação
```sh
$ rails s
```

Abra o seu navegador(de preferência Chrome ou Firefox) e navegue para `localhost:3000/`

## Deploy Heroku

https://sw-vote.herokuapp.com/


## Dependências
Ruby -v 2.7.1
Rails -v 6.0.3
Postgresql
