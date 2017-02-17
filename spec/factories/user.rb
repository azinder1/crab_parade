
FactoryGirl.define do
  factory :user, class: User do
    email 'email@email.com'
    password '123456'
    password_confirmation '123456'
  end
  # factory :user_authenticate, class: User do
  #   user = create(:user)
  #   user = User.authenticate(email: user.email, password: user.password)
  # end
end
