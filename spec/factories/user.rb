FactoryGirl.define do
  factory :user do
    email 'john.doe@example.com'
    password 'correct horse battery stapple'
    login_name 'john.doe@example.com'
    enabled true
  end
end
