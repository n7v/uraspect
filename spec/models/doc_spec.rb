require 'spec_helper'

describe Doc do

  let(:doc) { FactoryGirl.build(:doc) }

  it 'should be valid with valid attributes' do
    doc.should be_valid
  end

  describe '#name' do
    it 'should not be empty' do
      doc.name = ' '
      doc.should be_invalid
    end
  end

  describe '#sample' do
    it 'should not be empty' do
      doc.sample_file_name = ' '
      doc.should be_invalid
    end

    it 'should not be fake' do
      pending "File should exist"
    end
  end

end
