FactoryGirl.define do
  factory :product, class: Product do
    name 'test'
    description 'this is a test'
    price '3.00'
  end
end
