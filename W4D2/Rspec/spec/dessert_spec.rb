require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:new_dessert) { Dessert.new("tiramisu", 1, "pyrex pete") }

  describe "#initialize" do
    it "sets a type" do
      expect(new_dessert.type).to eq("tiramisu")
    end

    it "sets a quantity" do
      expect(new_dessert.quantity).to eq(1)
    end

    it "starts ingredients as an empty array" do
      expect(new_dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
     expect { Dessert.new("more misu", "nom nom", chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      expect(new_dessert.ingredients).to_not include('whipped cream')
      new_dessert.add_ingredient('whipped cream')
      expect(new_dessert.ingredients).to include('whipped cream')
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      new_dessert.eat(1)
      expect(new_dessert.quantity).to eq(0)
    end

    it "raises an error if the amount is greater than the quantity" do 
      expect { new_dessert.eat(33)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(new_dessert.serve).to eq("Pyrex Pete has made 0 tiramisu!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(new_dessert)
      new_dessert.make_more
    end
  end
end
