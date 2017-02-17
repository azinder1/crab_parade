require 'rails_helper'

describe Product do
  it {should validate_presence_of :name}
  it { should validate_presence_of :description}
  it { should validate_presence_of :price }
  it { have_many :reviews }
end
