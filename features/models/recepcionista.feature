Feature: Operacoes CRUD para um Recepcionista
    As a administrador do sistema
    I want to adicionar, remover, mostrar e atualizar Recepcionista
    So that Eu possa definir seus horarios de atendimento e marcar ou desmarcar consultas

    Scenario: Adicionar um novo Recepcionista
    Given Eu estou na página de Novo recepcionista
    When Eu prencho "Nome" com "joana Teste"
    And Eu clico no botao "Create Recepcionist"
    Then Eu vejo a mensagem de sucesso "Recepcionist was successfully created."

    Scenario: Editar um Recepcionista que ja existe
    Given Existe pelo menos um Recepcionista cadastrado
    And Eu estou na lista de Recepcionista
    When Eu clico no link para editar o primeiro Recepcionista da lista
    When Eu mudo a "Nome" para "jose (editado)"
    And Eu clico no botao "Update Recepcionista"
    Then Eu vejo a mensagem de sucesso "Recepcionista was successfully updated."

    Scenario: Visualizar um Recepcionista existente
    Given Existe pelo menos um Recepcionista cadastrado
    And Eu estou na lista de Recepcionista
    When Eu clico no link para visualizar o primeiro Recepcionista da lista
    Then Eu sou redirecionado para a página de detalhes do Recepcionista
    And Eu vejo os dados do Recepcionista corretamente preenchidos

    Scenario: Apagar um Recepcionista existente
    Given Existe pelo menos um Recepcionista cadastrado
    And Eu estou na lista de Recepcionista
    When Eu clico no link para visualizar o primeiro Recepcionista da lista
    And Eu clico no botao para apagar o Recepcionista
    Then Eu vejo a mensagem de sucesso "Recepcionista was successfully destroyed."
    And Sou direcionado para a lista de Recepcionista atualizada
