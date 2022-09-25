Feature: recepcionista
  As a admin
  I want to CRUD recepcionista
  So that eu nao precise fazer isto manualmente

  Scenario: Novo recepcionista
    Given estou logado com o administrador com o usuario 'admin@admin.com' e senha '987654321'
    And estou na tela de criar Recepcionista
    When eu preencho os campos de Nome 'Arthur Costa Gomes', CPF '712.249.754-21', Email 'arthur@gmail.com', Senha '123456', Confirmar senha '123456'
    And clico em Create Recepcionista
    Then eu vejo a mensagem 'Recepcionista was successfully created'

  Scenario: Novo recepcionista com senhas diferentes
    Given estou logado com o administrador com o usuario 'admin@admin.com' e senha '987654321'
    And estou na tela de criar Recepcionista
    When eu preencho os campos de Nome 'Arthur Costa Gomes', CPF '712.249.754-21', Email 'arthur@gmail.com', Senha '123456', Confirmar senha '654321'
    And clico em Create Recepcionista
    Then eu vejo a mensagem de erro "Password confirmation doesn't match Password"

  Scenario: Editar um recepcionista no sistema
    Given estou logado com o administrador com o usuario 'admin@admin.com' e senha '987654321'
    And que existe um recepcionista de Nome 'Arthur Costa Gomes', CPF '712.249.754-21', Email 'arthur@gmail.com', Senha '123456', Confirmar senha '123456'
    And estou na pagina do recepcionista com nome 'Arthur Costa Gomes'
    And clico em Editar
    When preencho o campo de Nome do recepcionista 'Arthur Costa Gomes'
    And clico em Update Recepcionista
    Then eu vejo a mensagem de erro 'Recepcionista was successfully updated'

  Scenario: Editar um recepcionista no sistema com email invalido
    Given estou logado com o administrador com o usuario 'admin@admin.com' e senha '987654321'
    And que existe um recepcionista de Nome 'Arthur Costa Gomes', CPF '712.249.754-21', Email 'arthur@gmail.com', Senha '123456', Confirmar senha '123456'
    And estou na pagina do recepcionista com nome 'Arthur Costa Gomes'
    And clico em Editar
    When preencho o campo de Email do recepcionista 'arthurgmail.com'
    And clico em Update Recepcionista
    Then eu vejo a mensagem de erro 'Email is invalid'

  Scenario: Apagar um recepcionista no sistema
    Given estou logado com o administrador com o usuario 'admin@admin.com' e senha '987654321'
    And que existe um recepcionista de Nome 'Arthur Costa Gomes', CPF '712.249.754-21', Email 'arthur@gmail.com', Senha '123456', Confirmar senha '123456'
    And estou na pagina do recepcionista com nome 'Arthur Costa Gomes'
    And clico em Destroy
    Then eu vejo a mensagem 'Recepcionista was successfully destroyed.'