require 'rails_helper'

RSpec.describe Album, type: :model do
  
  let(:title) {'Divide'}
  let(:year) {2017}
  let(:album) {Album.new(title: title, year: 2017)}

  context "when all the proper attributes are provided" do
    
    it "should be valid" do
      album.valid?
      expect(album).to be_valid
    end

  end

  context "when title is not provided" do

    it 'should not be valid' do
      album.title = nil
      expect(album).to_not be_valid
    end

    it 'reports a validation error on the title' do
      album.title = nil
      album.valid?
      expect(album.errors.full_messages).to include("Title can't be blank")
    end

  end

  context 'when year is not provided' do

    it 'should not be valid' do
      album.year = nil
      expect(album).to_not be_valid
    end

    it 'reports a validation error on the year' do
      album.year = nil
      album.valid?
      expect(album.errors.full_messages).to include("Year can't be blank")
    end

  end

end
