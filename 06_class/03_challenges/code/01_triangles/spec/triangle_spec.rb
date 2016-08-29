require_relative './spec_helper'
require_relative '../triangle.rb'

describe 'Triangle' do
  let(:eq_triangle1) {Triangle.new(2,2,2)}
  let(:eq_triangle2) {Triangle.new(10,10,10)}
  let(:iso_triangle1) {Triangle.new(3,4,4)}
  let(:iso_triangle2) {Triangle.new(4,3,4)}
  let(:iso_triangle3) {Triangle.new(4,4,3)}
  let(:iso_triangle4) {Triangle.new(10,10,2)}
  let(:sca_triangle1) {Triangle.new(3,4,5)}
  let(:sca_triangle2) {Triangle.new(10,11,12)}
  let(:sca_triangle3) {Triangle.new(5,4,2)}
  let(:sca_triangle4) {Triangle.new(0.4,0.6,0.3)}

  describe '::new' do 
    it 'instantiates with 3 sides (integers) passed in upon initialization' do 
      expect { Triangle.new(1) }.to raise_error(StandardError)
      expect { Triangle.new(1,2) }.to raise_error(StandardError)
    end
  end

  describe '#classification' do 
    it 'knows that equilateral triangles have equal sides' do
      expect(eq_triangle1.classification).to eq("equilateral")
    end

    it 'knows that larger equilateral triangles also have equal sides' do
      expect(eq_triangle2.classification).to eq("equilateral")
    end

    it 'knows that isosceles triangles have last two sides equal' do
      expect(iso_triangle1.classification).to eq("isosceles")
    end

    it 'knows that isosceles triangles have first and last sides equal' do
      expect(iso_triangle2.classification).to eq("isosceles")
    end

    it 'knows that isosceles triangles have two first sides equal' do
      expect(iso_triangle3.classification).to eq("isosceles")
    end

    it 'knows that isosceles triangles have in fact exactly two sides equal' do
      expect(iso_triangle4.classification).to eq("isosceles")
    end

    it 'knows that scalene triangles have no equal sides' do
      expect(sca_triangle1.classification).to eq("scalene")
    end

    it 'knows that scalene triangles have no equal sides at a larger scale too' do
      expect(sca_triangle2.classification).to eq("scalene")
    end

    it 'knows that scalene triangles have no equal sides in descending order either' do
      expect(sca_triangle3.classification).to eq("scalene")
    end

    it 'knows that very small triangles are legal' do
      expect(sca_triangle4.classification).to eq("scalene")
    end
  end

end