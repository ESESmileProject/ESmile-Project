Given("Eu estou na página de Novo dentista") do
  visit '/dentista/new'
  expect(page).to have_current_path('dentista/new')
end

When("Eu prencho {string} com {string}") do |nome,novo_nome|
  fill_in nome,	with: novo_nome
end

When("Eu clico no botao {string}") do |botao|
  first(:button, botao).click
end

Then("Eu vejo a mensagem de sucesso {string}") do |message|
  expect(page).to have_content message
end

Given("Existe pelo menos um dentista cadastrado") do
  @dentista = Dentistum.create(nome: "Carlos Teste", especialidade: "Odontopediatria", telefone: "12-123456789", endereco: "Rua 1234 1222", dia_semana: "Terça-Feira", horario_inicio: "0830am", horario_fim: "1530pm")
end

Given("Eu estou na lista de dentistas") do
  visit 'dentista'
end

When("Eu clico no link para editar o primeiro dentista da lista") do
  first(:link,'Edit this dentistum').click
end

When("Eu mudo a {string} para {string}") do |especialidade, nova_especialidade|
  fill_in especialidade,	with: nova_especialidade
end

When("Eu clico no link para visualizar o primeiro dentista da lista") do
  first(:link,'Show this dentistum').click
end

Then("Eu vejo os dados do dentista corretamente preenchidos") do
  expect(page).to have_content @dentista.nome
  expect(page).to have_content @dentista.especialidade
  expect(page).to have_content @dentista.telefone
  expect(page).to have_content @dentista.endereco
  expect(page).to have_content @dentista.dia_semana
  expect(page).to have_content @dentista.horario_inicio
  expect(page).to have_content @dentista.horario_fim
end

When("Eu clico no botao para apagar o dentista") do
  first(:button,'Destroy this dentistum').click
end

Then("Sou direcionado para a lista de dentistas atualizada") do
  expect(page).to have_content @dentista.nome
end
