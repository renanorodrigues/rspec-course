require 'pry'

class Product
  attr_reader :name, :quantity

  def initialize(name, quantity = 0)
    @name = name
    @quantity = quantity
  end

  def sell
    if @quantity >= 1
      @quantity -= 1
    else
      "#{@name} is out of Stock! Buy now to replenish."
    end
  end
end

RSpec.describe Product do
  let(:product) { Product.new('Playstation 1', 1) }

  context 'selling the last item' do
    before { product.sell }

    it 'quantity product is zero' do
      expect(product.quantity).to eq 0  
    end

    it 'should return out of stock message' do
      expect(product.sell).to eq("#{product.name} is out of Stock! Buy now to replenish.")
    end
  end
end