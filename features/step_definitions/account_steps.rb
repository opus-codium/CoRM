Étantdonné(/^un compte "(.*?)"$/) do |name|
  visit new_account_path
  fill_in 'Société', with: name
  click_on 'Créer un compte'
end
