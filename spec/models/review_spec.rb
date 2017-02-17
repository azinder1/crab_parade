require 'rails_helper'

describe Review do
  it {should validate_presence_of :content}
  it { belong_to :review }
  it { belong_to :user}
end
