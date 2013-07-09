#encoding: utf-8

require 'spec_helper'

describe Product do
  let(:enterprise) { Enterprise.create(description: "Burguer King") }
  let(:category)   { enterprise.categories.create(description: "Sanduiches") }
  before { @product = category.products.create(name: "Whopper Furioso", description: "Bread with sesame seeds, a tasty ", price: 12.97) }

  subject { @product }

  it { should respond_to(:category_id) }
  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should respond_to(:price) }
  it { should respond_to(:enterprise) }

  it { should be_valid }

  describe "accessible attributes" do
    it "should not allow access to enterprise_id" do
      expect do
        Product.new(category_id: category.id)
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end    
  end  

  describe "when category is not present" do
  	before { @product.category_id = " " }
  	it { should_not be_valid }
  end

  describe "when name is not present" do
  	before { @product.name = " " }
  	it { should_not be_valid }
  end

  describe "when price is not present" do
  	before { @product.price = " " }
  	it { should_not be_valid }
  end

  describe "when name is too long" do
    before { @product.name = "a" * 121 }
    it { should_not be_valid }
  end

end
