describe 'An ideal sandwich' do
  before { @sandwich = Sandwich.new('delicious', []) }
  Sandwich = Struct.new(:taste, :toppings)
  it 'is delicious' do
    taste = @sandwich.taste

    expect(taste).to eq('delicious')
  end

  it 'lets me add toppings' do
    @sandwich.toppings << 'cheese'
    toppings = @sandwich.toppings

    expect(toppings).not_to be_empty
  end
end
