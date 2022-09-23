Feature: paciente
  As a paciente
  I want to CRUD meu perfil
  So that possa utilizar o sistema

  Scenario: Novo paciente
    Given estou logado com o administrador com o usuario 'admin@admin.com' e senha '987654321'
    And estou na tela de criar Paciente
    When eu preencho os campos de Nome 'José Daniel Florêncio Duarte Filho', Data de Nascimento '17/02/2001', CPF '013.862.694-41', Email 'danielduartefilho.df@gmail.com', Senha '123456'
    And clico em Create Paciente
    Then eu vejo a mensagem 'Paciente was successfully created'

  Scenario: Paciente invalido
    Given estou logado com o administrador com o usuario 'admin@admin.com' e senha '987654321'
    And estou na tela de criar Paciente
    When eu preencho os campos de Nome 'José Daniel Florêncio Duarte Filho', Data de Nascimento '17/02/2025', CPF '013.862.694-41', Email 'danielduarte@gmail.com', Senha '123456'
    And clico em Create Paciente
    Then eu vejo a mensagem de erro 'Data nao pode ser no futuro'

  Scenario: Editar um Paciente no sistema
    Given estou logado com o administrador com o usuario 'admin@admin.com' e senha '987654321'
    And que existe um paciente de Nome 'José Daniel Florêncio Duarte Filho', Data de Nascimento '17/02/2001', CPF '013.862.694-41', Email 'danielduartefilho.df@gmail.com' e Senha '123456'
    And estou na pagina do paciente com nome 'José Daniel Florêncio Duarte Filho'
    And clico em Editar
    When preencho o campo de Nome 'José Daniel Florêncio Duarte'
    And clico em Update Paciente
    Then eu vejo a mensagem 'Paciente was successfully updated.'

  Scenario: Editar um Paciente no sistema errado
    Given estou logado com o administrador com o usuario 'admin@admin.com' e senha '987654321'
    And que existe um paciente de Nome 'José Daniel Florêncio Duarte Filho', Data de Nascimento '17/02/2001', CPF '013.862.694-41', Email 'danielduartefilho.df@gmail.com' e Senha '123456'
    And estou na pagina do paciente com nome 'José Daniel Florêncio Duarte Filho'
    And clico em Editar
    When preencho o campo de Cpf '013.862.694-42'
    And clico em Update Paciente
    Then eu vejo a mensagem de erro 'Cpf formato ou numero errado'

  Scenario: Apagar um Paciente no sistema
    Given estou logado com o administrador com o usuario 'admin@admin.com' e senha '987654321'
    And que existe um paciente de Nome 'José Daniel Florêncio Duarte Filho', Data de Nascimento '17/02/2001', CPF '013.862.694-41', Email 'danielduartefilho.df@gmail.com' e Senha '123456'
    And estou na pagina do paciente com nome 'José Daniel Florêncio Duarte Filho'
    And clico em Destroy
    Then eu vejo a mensagem de paciente removido com sucesso

