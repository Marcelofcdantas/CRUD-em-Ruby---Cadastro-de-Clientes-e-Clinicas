require 'rails_helper'

feature "Clinicas", type: :feature do
    scenario 'Mostra tela das clinicas' do
        visit('/clinicas')
        expect(page).to have_content('Clinicas')
    end
    scenario 'Mostra espaço para nome da clinica' do
        visit('/clinicas/new')
        expect(page).to have_content('Nome fantasia')
    end
    scenario 'Mostra espaço para cnpj da clinica' do
        visit('/clinicas/new')
        expect(page).to have_content('Cnpj')
    end
    scenario 'Checa existência de botão' do
        visit('/clinicas/new')
        expect(page).to have_selector('a')
    end
    scenario 'Verifica Link de nova clinica' do
        visit('/clinicas')
        expect(page).to have_content('Nova Clinica')
        expect(page).to have_link('Nova Clinica')
    end
    scenario 'Verifica formulário de nova clinica' do
        visit('/clinicas')
        click_on('Nova Clinica')
        expect(page).to have_content('Nova Clinica')
    end
    scenario 'Cadastro uma clinica válida' do
        visit('/clinicas/new')
        
        fill_in("Razao social",	with: "saude ltda")
        fill_in("Cnpj",	with: "123.456.789.001/01")
        fill_in("Nome fantasia",	with: "saude ilimitada")
        fill_in("Rua",	with: "r. Barao")
        fill_in("Numero",	with: "1")
        fill_in("Bairro",	with: "Norte")
        fill_in("Cidade",	with: "Sul do Norte")
        fill_in("Estado",	with: "Espírito Santo")
        fill_in("Cep",	with: "09876-543")

        click_on('Create Clinica')
        expect(page).to have_content('Clinica criada com sucesso')
        expect(Clinica.last.razao_social).to eq('saude ltda')
    end
    scenario 'Impede cadastro com dados em branco' do
        visit('/clinicas/new')
        click_on('Create Clinica')
        expect(page).to have_content('prohibited this clinica from being saved')
    end
end