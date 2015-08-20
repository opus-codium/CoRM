Lorsque(/^je créé une réunion le lendemain$/) do
  fill_in 'Début', with: Time.now + 1.day
  fill_in 'Fin', with: Time.now + 1.day
  fill_in 'Description', with: 'moin'
  click_on 'Créer un Évènement' # FIXME: -> événement (réforme de l'orthographe de 1990)
end

Lorsque(/^que j'affiche les événements du compte "(.*?)"$/) do |account|
  visit accounts_path
  click_on account
end

Alors(/^je vois "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end
