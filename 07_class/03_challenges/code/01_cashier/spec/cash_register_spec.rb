require_relative './spec_helper'
require_relative '../cash_register.rb'

describe 'CashRegister' do
  let(:cash_register) { CashRegister.new }
  let(:cash_register_with_discount) { CashRegister.new(30) }

  describe '::new' do
    it 'sets an instance variable for @total on initialization to zero' do
      expect(cash_register.total).to eq(0)
    end

    it 'sets an instance variable for @items on initialization to an empty array' do
      expect(cash_register.items).to eq([])
    end

    it 'optionally takes an employee discount on initialization (default argument set to zero)' do
      expect(cash_register_with_discount.discount).to eq(30)
    end
  end

  describe '#total' do
    it 'returns the current total' do
      cash_register.total = 50 
      expect(cash_register.total).to eq(50)
    end
  end

  describe '#add_item' do
    it 'accepts a title and price and increases the total' do
      cash_register.add_item("iPhone 7", 400)
      expect(cash_register.total).to eq(400)
    end

    it 'also accepts an optional quantity' do
      cash_register.add_item("FitBit", 100, 2)
      expect(cash_register.total).to eq(200)
    end

    it "doesn't forget about the previous total" do
      cash_register.add_item("Cinnamon Toast Crunch", 3.50)
      expect(cash_register.total).to eq(3.50)
      cash_register.add_item("Nutella", 3.00)
      expect(cash_register.total).to eq(6.50)
      cash_register.add_item("Starbucks Frap", 4.50, 2)
      expect(cash_register.total).to eq(15.50)
    end
  end

  describe '#apply_discount' do
    context 'the cash register was initialized with an employee discount of 30' do
      it 'applies the discount to the total price' do
        cash_register_with_discount.add_item("Hoverboard", 300)
        cash_register_with_discount.apply_discount
        expect(cash_register_with_discount.total).to eq(210)
      end

      it 'returns message with updated total' do
        cash_register_with_discount.add_item("Hoverboard", 300)
        expect(cash_register_with_discount.apply_discount).to eq("The total after the discount applied is $210.")
      end

      it 'updates total with the discount' do
        cash_register.total = 0
        cash_register_with_discount.add_item("Hoverboard", 300)
        expect{cash_register_with_discount.apply_discount}.to change{cash_register_with_discount.total}.by(-90)
      end
    end

    context 'the cash register was not initialized with a discount' do
      it 'returns a string error message that there is no discount to apply' do
        expect(cash_register.apply_discount).to eq("You have no discounts available.")
      end
    end
  end

  describe '#items' do
    it 'returns an array containing all items that have been added' do
      new_register = CashRegister.new
      new_register.add_item("avocados", 0.99, 5)
      new_register.add_item("bread", 1.75, 2)
      expect(new_register.items).to eq(["avocados", "avocados", "avocados", "avocados", "avocados", "bread", "bread"])
    end
  end

end