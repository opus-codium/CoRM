Étantdonné(/^CoRM est initialisé$/) do
  @admin = build(:user)

  visit new_user_path
  fill_in 'Identifiant', with: @admin.email
  fill_in 'Adresse e-mail', with: @admin.email
  fill_in 'Mot de passe', with: @admin.password
  fill_in 'Confirmation', with: @admin.password
  fill_in 'Prénom', with: @admin.forename
  fill_in 'Nom de famille', with: @admin.surname
  click_on 'Créer'
end

Étantdonné(/^un utilisateur connecté$/) do
  visit root_path
  fill_in 'Identifiant', with: @admin.email
  fill_in 'Mot de passe', with: @admin.password
  click_on 'Connexion'

  #expect(page).to have_content('Tableau de bord')
end
