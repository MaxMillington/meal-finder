require 'rails_helper'

RSpec.describe Number, type: :model do
  let(:number) do
    Number.new(phone_number: "570-333-5201")
  end

  it "creates a number with the right format" do
    number.save

    expect(Number.all.first.phone_number).to eq("+15703335201")
  end

  it "is valid" do

    expect(number).to be_valid
  end

  it "doesn't work without a phone number" do
    number.phone_number = nil

    expect(number).to_not be_valid
  end

  it "deletes" do
    number.delete

    expect(Number.all.count).to eq(0)
  end

end
