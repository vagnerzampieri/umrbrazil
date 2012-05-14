require 'spec_helper'

describe Telephone do
  before do
    #@type_telephone = TypeTelephone.new(:name => "Trabalho", :enabled => true)
    #@type_telephone.save
    @telephone = Telephone.new
    @telephone.ddd = '21'
    @telephone.tel = '38383838'
    @telephone.type_telephone_id = 1#@type_telephone
  end

  it "should be created" do
    @telephone.should be_valid
  end
end
