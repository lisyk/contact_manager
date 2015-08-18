require 'rails_helper'

RSpec.describe Person, :type => :model do

  let(:person) { Person.new(first_name: 'Sergio', last_name: 'Lisiko') }
  it "is invalid without a first name" do
    person.first_name = nil
    expect(person).not_to be_valid
  end

  it "is invalid without a last name" do
    person.last_name = nil
    expect(person).to_not be_valid
  end

  it "is valid" do
    expect(person).to be_valid
  end

  it "has array of phone numbers" do
    expect(person.phone_numbers).to eq([])
  end
end
