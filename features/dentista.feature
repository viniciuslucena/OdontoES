Feature: dentista
  As a adminstrador
  I want to CRUD de dentista
  So that possa realizar o  CRUD  do dentista no sistema

  Scenario: Novo dentista
    Given estou logado com o administrador com o usuario 'admin@admin.com' e senha '987654321'
    And estou na tela de criar Dentista
    When eu preencho os campos de Nome 'Daniel', Telefone '81997128385', CRO '12345', CPF '013.862.694-41', Especialidade 'Ortodondia', Horario inicio '08:00', Horario fim '14:00'
    And clico em Create Dentistum
    Then eu vejo a mensagem 'Dentistum was successfully created'
g