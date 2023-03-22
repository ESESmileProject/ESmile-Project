Given("Eu estou na página de New recepcionist") do
    visit '/recepcionists/new'
    expect(page).to have_current_path('recepcionists/new')
  end
  
  When("Eu prencho {string} com {string}") do |nome,novo_nome|
    fill_in nome, with: novo_nome
  end
  
  Given("Existe pelo menos um recepcionista cadastrado") do
    @recepcionists = recepcionist.create(nome: "joao Teste")
  end
  
  Given("Recepcionists") do
    visit 'recepcionists'
  end
  
  When("Eu clico no link para editar o primeiro Recepcionista da lista") do
    first(:link,'Edit this recepcionist').click
  end
  

  
  When("Eu clico no link para visualizar o primeiro Recepcionista da lista") do
    first(:link,'Show this recepcionist').click
  end
  
  Then("Eu vejo os dados do Recepcionista corretamente preenchidos") do
    expect(page).to have_content @recepcionist.nome
  end
  
  When("Eu clico no botao para apagar o Recepcionista") do
    first(:button,'Destroy this recepcionist').click
  end
  
  Then("Sou direcionado para a lista de Recepcionista atualizada") do
    expect(page).to have_content @recepcionist.nome
  end
  