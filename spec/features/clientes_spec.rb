require 'rails_helper'

feature "Clientes", type: :feature do
    scenario 'Mostra tela de clientes' do
        visit('/clientes')
        expect(page).to have_content('Clientes')
    end
    scenario 'Mostra espaço para nome do cliente' do
        visit('/clientes/new')
        expect(page).to have_content('Nome')
    end
    scenario 'Mostra espaço para cpf do cliente' do
        visit('/clientes/new')
        expect(page).to have_content('Cpf')
    end
    scenario 'Checa existência de botão' do
        visit('/clientes/new')
        expect(page).to have_selector('a')
    end
    scenario 'Verifica Link de novo cliente' do
        visit('/clientes')
        expect(page).to have_content('Novo Cliente')
        expect(page).to have_link('Novo Cliente')
    end
    scenario 'Verifica formulário de novo cliente' do
        visit('/clientes')
        click_on('Novo Cliente')
        expect(page).to have_content('Novo Cliente')
    end
    scenario 'Cadastro um cliente válido' do
        visit('/clientes/new')
        
        fill_in("Nome",	with: "Fulano")
        fill_in("Cpf",	with: "123.456.789-01")
        fill_in("Rg",	with: "12345")
        fill_in("Estado civil",	with: "Solteiro")
        fill_in("Rua",	with: "r. Duque")
        fill_in("Numero",	with: "10")
        fill_in("Complemento",	with: "casa 5")
        fill_in("Bairro",	with: "Centro")
        fill_in("Cidade",	with: "Caruru")
        fill_in("Estado",	with: "Amapá")
        fill_in("Cep",	with: "12345-678")

        click_on('Create Cliente')
        expect(page).to have_content('Cliente criado com sucesso')
        expect(Cliente.last.nome).to eq('Fulano')
    end
    scenario 'Impede cadastro com dados em branco ou inválidos' do
        visit('/clientes/new')
        click_on('Create Cliente')
        expect(page).to have_content('prohibited this cliente from being saved')
    end
end