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
      doc.sample.destroy
      doc.should be_invalid
    end

    it 'should not be fake' do
      doc.save
      File.exist?(doc.sample.path).should == true
    end
  end

end
