Feature: Operacoes CRUD para um dentista
    As a administrador do sistema
    I want to adicionar, remover, mostrar e atualizar dentistas
    So that Eu possa definir seus horarios de atendimento e marcar ou desmarcar consultas

    Scenario: Adicionar um novo dentista
    Given Eu estou na página de New dentistum
    When Eu prencho "Nome" com "Carlos Teste"
    And Eu preencho "Especialidade" com "Odontopediatria"
    And Eu preencho "Telefone" com "12-123456789"
    And Eu preencho "Endereco" com "Rua 1234 1222"
    And Eu preencho "Dia semana" com "Terça-Feira"
    And Eu preencho "Horario inicio" com "0830am"
    And Eu preencho "Horario fim" com "1530pm"
    And Eu clico no botao "Create Dentistum"
    Then Eu vejo a mensagem de sucesso "Dentistum was successfully created."

    Scenario: Editar um dentista que ja existe
    Given Existe pelo menos um dentista cadastrado
    And Eu estou na lista de dentistas
    When Eu clico no link para editar o primeiro dentista da lista
    When Eu mudo a "Especialidade" para "Periodontia (editado)"
    And Eu clico no botao "Update Dentistum"
    Then Eu vejo a mensagem de sucesso "Dentistum was successfully updated."

    Scenario: Visualizar um dentista existente
    Given Existe pelo menos um dentista cadastrado
    And Eu estou na lista de dentistas
    When Eu clico no link para visualizar o primeiro dentista da lista
    Then Eu sou redirecionado para a página de detalhes do dentista
    And Eu vejo os dados do dentista corretamente preenchidos

    Scenario: Apagar um dentista existente
    Given Existe pelo menos um dentista cadastrado
    And Eu estou na lista de dentistas
    When Eu clico no link para visualizar o primeiro dentista da lista
    And Eu clico no botao para apagar o dentista
    Then Eu vejo a mensagem de sucesso "Dentistum was successfully destroyed."
    And Sou direcionado para a lista de dentistas atualizada
