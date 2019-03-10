require_relative '../../src/codeforces/watermelon'

RSpec.describe Watermelon do
  it 'is returns yes if weight was even' do
    watermelon = Watermelon.new(10)
    expect(watermelon.even_divided?).to eq "YES"
  end

  it 'is returns no if weight was odd' do
    watermelon = Watermelon.new(7)
    expect(watermelon.even_divided?).to eq "NO"
  end

  it 'is returns no if weight was zero' do
    watermelon = Watermelon.new(0)
    expect(watermelon.even_divided?).to eq 'NO'
  end

  it 'is returns no if weight was two' do
    watermelon = Watermelon.new(2)
    expect(watermelon.even_divided?).to eq 'NO'
  end
end

