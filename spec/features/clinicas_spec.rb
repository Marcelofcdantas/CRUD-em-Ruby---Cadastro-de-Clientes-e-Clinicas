require 'rails_helper'

feature "Clinicas", type: :feature do
    scenario 'Mostra tela de clientes' do
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
end