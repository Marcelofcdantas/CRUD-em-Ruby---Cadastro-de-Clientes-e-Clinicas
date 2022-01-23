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
    scenario 'Checa botão' do
        visit('/clientes/new')
        expect(page).to have_selector('a')
    end
end