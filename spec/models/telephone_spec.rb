require 'spec_helper'

describe Telephone do
  before do
    @telephone = FactoryGirl.build(:telephone)
  end

  subject {@telephone}

  it {should respond_to(:ddd)}
  it {should respond_to(:tel)}
  it {should belong_to(:type_telephone)}
  it {should have_many(:accounts)}

  it "should have association accounts telephones" do
    telephone = Telephone.reflect_on_association(:accounts_telephones)
    telephone.macro.should == :has_many
  end

  it "should not be created if the ddd is nil" do
    @telephone.ddd = nil
    @telephone.should_not be_valid
  end

  it "should not be created if the ddd is less 2" do
    @telephone.ddd = "1"
    @telephone.should_not be_valid
  end

  it "should not be created if the ddd is more 2" do
    @telephone.ddd = "123"
    @telephone.should_not be_valid
  end

  it "should not be created if the tel is nil" do
    @telephone.tel = nil
    @telephone.should_not be_valid
  end

  it "should not be created if the tel is less 8" do
    @telephone.tel = "1234567"
    @telephone.should_not be_valid
  end

  it "should not be created if the tel is more 8" do
    @telephone.tel = "123456789"
    @telephone.should_not be_valid
  end

  it "should not be created if the branch_line is less 4" do
    @telephone.branch_line = "123"
    @telephone.should_not be_valid
  end

  it "should not be created if the branch_line is more 4" do
    @telephone.branch_line = "12345"
    @telephone.should_not be_valid
  end

  it "should be created" do
    @telephone.should be_valid
  end
end
