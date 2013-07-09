require 'spec_helper'

describe Branch do
  let(:enterprise) { Enterprise.create(description: "Burguer King") }
  before { @branch = enterprise.branches.create(description: "Filial 01",
   	                                      cnpj: "37155216000136",
                                        adress: "Rua Libania", 
                                 number_adress: "105", 
                                    complement: "", 
                                      district: "Serrinha", 
                                          city: "Fortaleza", 
                                         state: "CE",  
                                           zip: "6000000"
                                 
                                 )}

  subject { @branch }

  it { should respond_to(:description) }
  it { should respond_to(:cnpj) }
  it { should respond_to(:adress) }
  it { should respond_to(:number_adress) }
  it { should respond_to(:complement) }
  it { should respond_to(:district) }
  it { should respond_to(:city) }
  it { should respond_to(:state) }
  it { should respond_to(:zip) }
  it { should respond_to(:enterprise_id) }
  it { should respond_to(:enterprise)}
  its(:enterprise) {should == enterprise}
  
  it { should be_valid }

  describe "accessible attributes" do
    it "should not allow access to enterprise_id" do
      expect do
        Branch.new(enterprise_id: enterprise.id)
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end    
  end  

  describe "when description is not present" do
  	before { @branch.description = " " }
  	it { should_not be_valid }
  end  

  describe "when cnpj is not present" do
  	before { @branch.cnpj = " " }
  	it { should_not be_valid }
  end  

  describe "when adress is not present" do
  	before { @branch.adress = " " }
  	it { should_not be_valid }
  end  

  describe "when number_adress is not present" do
  	before { @branch.number_adress = " " }
  	it { should_not be_valid }
  end  

  describe "when district is not present" do
  	before { @branch.district = " " }
  	it { should_not be_valid }
  end  

  describe "when city is not present" do
  	before { @branch.city = " " }
  	it { should_not be_valid }
  end  

  describe "when state is not present" do
  	before { @branch.state = " " }
  	it { should_not be_valid }
  end  

  describe "when zip is not present" do
  	before { @branch.zip = " " }
  	it { should_not be_valid }
  end  

  describe "when enterprise_id is not present" do
    before { @branch.enterprise_id = nil }
    it { should_not be_valid }
  end

  describe "when description is too long" do
    before { @branch.description = "a" * 101 }
    it { should_not be_valid }
  end

  describe "cnpj must be equal to 14" do
    before { @branch.cnpj = "a" * 14 }
    it { should be_valid }
  end

  describe "cnpj must be equal to 14" do
    before { @branch.cnpj = "a" * 12 }
    it { should_not be_valid }
  end

  describe "cnpj is greater than 14" do
    before { @branch.cnpj = "a" * 15 }
    it { should_not be_valid }
  end

  describe "when adress is too long" do
    before { @branch.adress = "a" * 101 }
    it { should_not be_valid }
  end

  describe "when number_adress is too long" do
    before { @branch.number_adress = "a" * 21 }
    it { should_not be_valid }
  end

  describe "when district is too long" do
    before { @branch.district = "a" * 61 }
    it { should_not be_valid }
  end

  describe "when city is too long" do
    before { @branch.city = "a" * 61 }
    it { should_not be_valid }
  end

  describe "when state is too long" do
    before { @branch.state = "a" * 3 }
    it { should_not be_valid }
  end

  describe "when zip is too long" do
    before { @branch.zip = "a" * 10 }
    it { should_not be_valid }
  end
end
