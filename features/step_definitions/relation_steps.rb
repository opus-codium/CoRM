Lorsque(/^je créé une relation "(.*?)" qui lie le compte "(.*?)" au compte "(.*?)"$/) do |relation, source, target|
  src = Account.find_by_company(source)
  expect(src).to_not be_nil

  tgt = Account.find_by_company(target)
  expect(tgt).to_not be_nil

  visit new_account_relation_path(src)
  fill_in 'account1_id', with: src.id, visible: false
  fill_in 'Relation', with: relation
  fill_in 'account2_id', with: tgt.id, visible: false
  click_on 'Créer une relation'
end

Alors(/^je peux me rendre sur la fiche du compte "(.*?)" grâce a sa relation "(.*?)"$/) do |target, relation|
  click_on 'Relations'
  within(:xpath, "//tr[string(td[2]) = '#{relation}' and string(td[3]) = 'B']") do
    click_on target
  end
  expect(page).to have_content("Relation(s) de #{target}")
end
