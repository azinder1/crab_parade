FactoryGirl.define do
  factory :review, class: Review do
    user
    product
    content 'This is a response test'
  end
end
