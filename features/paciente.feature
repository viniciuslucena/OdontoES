Feature: paciente
  As a paciente
  I want to CRUD meu perfil
  So that possa utilizar o sistema

  Scenario: Novo paciente
    Given que estou na tela de criar Paciente
    When eu preencho os campos de Nome 'José Daniel Florêncio Duarte Filho', Data de Nascimento '17/02/2001', CPF '013.862.694-41', Email 'danielduartefilho.df@gmail.com', Cep '55415-000', Cidade 'Quipapa', Bairro 'Centro', Logradouro 'Travessa da Conceicao' e Complemento 'Casa'
    And clico em Create Paciente
    Then eu vejo a mensagem 'Paciente was successfully created'


  Scenario: Paciente invalido
    Given que estou na tela de criar Paciente
    When eu preencho os campos de Nome 'José Daniel Florêncio Duarte', Data de Nascimento '17/02/2025', CPF '013.862.694-41', Email 'danielduarte@gmail.com', Cep '55415-000', Cidade 'Quipapa', Bairro 'Centro', Logradouro 'Travessa da Conceicao' e Complemento 'Casa'
    And clico em Create Paciente
    Then eu vejo a mensagem de erro 'Data nao pode ser no futuro'


  Scenario: Editar um Paciente no sistema
    Given que existe um paciente de Nome 'José Daniel Florêncio Duarte Filho', Data de Nascimento '17/02/2001', CPF '013.862.694-41', Email 'danielduartefilho.df@gmail.com', Cep '55415-000', Cidade 'Quipapa', Bairro 'Centro', Logradouro 'Travessa da Conceicao' e Complemento 'Casa'
    And clico no paciente de Nome 'José Daniel Florêncio Duarte Filho'
    And clico em Edit
    When preencho o campo de Logradouro 'Travessa da Conceição 18'
    And clico em Update Paciente
    Then eu vejo a mensagem 'Paciente was successfully updated.'


  Scenario: Editar um Paciente no sistema errado
    Given que existe um paciente de Nome 'José Daniel Florêncio Duarte Filho', Data de Nascimento '17/02/2001', CPF '013.862.694-41', Email 'danielduartefilho.df@gmail.com', Cep '55415-000', Cidade 'Quipapa', Bairro 'Centro', Logradouro 'Travessa da Conceicao' e Complemento 'Casa'
    And clico no paciente de Nome 'José Daniel Florêncio Duarte Filho'
    And clico em Edit
    When preencho o campo de Cpf '013.862.694-42'
    And clico em Update Paciente
    Then eu vejo a mensagem de erro 'Cpf formato ou numero errado'

  Scenario: Apagar um Paciente no sistema
    Given que existe um paciente de Nome 'José Daniel Florêncio Duarte Filho', Data de Nascimento '17/02/2001', CPF '013.862.694-41', Email 'danielduartefilho.df@gmail.com', Cep '55415-000', Cidade 'Quipapa', Bairro 'Centro', Logradouro 'Travessa da Conceicao' e Complemento 'Casa'
    And clico no paciente de Nome 'José Daniel Florêncio Duarte Filho'
    And clico em Destroy
    Then eu vejo a mensagem de paciente removido com sucesso

