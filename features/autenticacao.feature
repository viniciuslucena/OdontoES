Feature: Autenticacao
  As a adimn
  I want to CRUD admins
  So that os admins possam logar e deslogar do sistema

  Scenario: Criar Novo Admin
    Given estou logado com o administrador com o usuario 'admin@admin.com' e senha '987654321'
    And estou na tela de criar admin
    When eu preencho os campos de Nome 'Alex Lopes', Email 'alex@gmail.com', Senha '123456'
    And clico em Create Admin
    Then eu vejo a mensagem 'Admin was successfully created.'

  Scenario: Criar Novo Admin com nome em branco
    Given estou logado com o administrador com o usuario 'admin@admin.com' e senha '987654321'
    And estou na tela de criar admin
    When eu preencho os campos de Nome '', Email 'alex@gmail.com', Senha '123456'
    And clico em Create Admin
    Then eu vejo a mensagem 'Name can\'t be blank'

  Scenario: Logar como admin padrao
    Given estou na tela de login de admin
    When eu preencho os campos de Email 'admin@admin.com', Senha '987654321'
    And clico em Login
    Then eu vejo a mensagem 'Signed in successfully.'



