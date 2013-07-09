require 'spec_helper'

describe Category do
  let(:enterprise) { Enterprise.create(description: "Burguer King") }
  before { @category = enterprise.categories.create(description: "Bebidas") }

  subject { @category }

  it { should respond_to(:description) }
  it { should respond_to(:enterprise_id) }
  it { should respond_to(:enterprise) }
  its(:enterprise) {should == enterprise}

  it { should be_valid }

  describe "when description is not present" do
  	before { @category.description = " "}
  	it { should_not be_valid }
  end

  describe "accessible attributes" do
    it "should not allow access to enterprise_id" do
      expect do
        Category.new(enterprise_id: enterprise.id)
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end    
  end  

  describe "when enterprise_id is not present" do
    before { @category.enterprise_id = " "}
    it { should_not be_valid }
  end

end
