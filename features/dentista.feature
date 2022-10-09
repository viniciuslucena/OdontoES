Feature: dentista
  As a adminstrador
  I want to CRUD de dentista
  So that possa realizar o  CRUD  do dentista no sistema

  Scenario: Novo dentista
    Given estou logado com o administrador com o usuario 'admin@admin.com' e senha '987654321'
    And estou na tela de criar Dentista
    When eu preencho os campos de Nome 'Vinicius', Telefone '81971133619', CRO '12345', CPF '070.126.704-60', Especialidade 'Ortodondia'
    And clico em Create Dentistum
    Then eu vejo a mensagem 'Dentistum was successfully created'

  Scenario: Editar um Dentista no sistema
    Given estou logado com o administrador com o usuario 'admin@admin.com' e senha '987654321'
    And que existe um dentista de Nome 'Vinicius', Telefone '81971133619', CRO '12345', CPF '070.126.704-60', Especialidade 'Ortodondia'
    And estou na pagina do dentista com nome 'Vinicius'
    And clico em Editar
    When preencho o campo de Cro '98765'
    And clico em Update Dentistum
    Then eu vejo a mensagem 'Dentistum was successfully updated.'

  Scenario: Editar um Dentista com CPF invalido
    Given estou logado com o administrador com o usuario 'admin@admin.com' e senha '987654321'
    And que existe um dentista de Nome 'Vinicius', Telefone '81971133619', CRO '12345', CPF '070.126.704-60', Especialidade 'Ortodondia'
    And estou na pagina do dentista com nome 'Vinicius'
    And clico em Editar
    When preencho o campo de Cpf em Dentista '123.456.789-00'
    And clico em Update Dentistum
    Then eu vejo a mensagem de erro 'Cpf formato ou numero errado'

  Scenario: Editar um Dentista com CRO invalido
    Given estou logado com o administrador com o usuario 'admin@admin.com' e senha '987654321'
    And que existe um dentista de Nome 'Vinicius', Telefone '81971133619', CRO '12345', CPF '070.126.704-60', Especialidade 'Ortodondia'
    And estou na pagina do dentista com nome 'Vinicius'
    And clico em Editar
    When preencho o campo de Cro em Dentista '123456789'
    And clico em Update Dentistum
    Then eu vejo a mensagem de erro 'Cro is too long (maximum is 7 characters)'

  Given estou logado com o administrador com o usuario 'admin@admin.com' e senha '987654321'
    And que existe um dentista de Nome 'Vinicius', Telefone '81971133619', CRO '12345', CPF '070.126.704-60', Especialidade 'Ortodondia'
    And estou na pagina do dentista com nome 'Vinicius'
    And clico em Destroy
    Then eu vejo a mensagem 'Dentistum was successfully destroyed.'