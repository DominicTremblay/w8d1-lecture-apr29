require 'rails_helper'

RSpec.describe Artist, type: :model do
 
  # fixtures :artists

  let(:bob) {build(:artist)}
  let(:peach) {build(:artist)}  

  context "when name is not provided" do
    it 'is not valid' do
      bob.name = nil
      expect(bob).to_not be_valid
    end

    it 'reports a validation error' do
      bob.name = nil
      bob.valid?
      expect(bob.errors.full_messages).to include("Name can't be blank")
    end
  end

  context 'when a duplicate email is provided' do

    it 'is not valid' do 

      expect(peach).to_not be_valid
    end

    it 'reports a validation error on the email' do
      puts '---- Bob ----'
      puts bob.inspect
      puts '----- Peach ----'
      puts peach.inspect
      bob.save
      peach.valid?
      expect(peach.errors.full_messages).to include "Email has already been taken"
    end
  end

  # exemple with should matchers
  context "when email is not provided" do
    it { should validate_presence_of(:email) }
  end


end
