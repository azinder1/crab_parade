FactoryGirl.define do
  factory :product, class: Product do
    product
    name 'test'
    description 'this is a test'
    cost '3.00'
  end
end
