require 'first_tdd'


describe "#my_uniq" do
  let(:test_array) { [1, 2, 1, 3, 3] }
  it "removes duplicates from an array" do
    expect(test_array.my_uniq).to eq([1, 2, 3])
 end

  it "returns an array" do
    expect(test_array.my_uniq).to be_a(Array)
  end

  # it "returns unique elements in order" do
  #   expect(test_array.my_uniq).to_not eq()
  # end
end


describe '#two_sum' do
  let(:no_sums) { [1, 2, 3, 4] }
  let(:with_sums) { [-1, 0, 2, -2, 1] }

  it 'return empty array if no two elements equal zero' do
      expect(no_sums.two_sum).to eql([])
  end

  it 'returns sum indices in correct order' do
    expect(with_sums.two_sum).to eql([[0, 4], [2, 3]])
  end

end

describe '#my_transpose' do
  let(:matrix) { [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8] ] }

  it "returns new matrix with rows and columns transposed" do
    cols = [
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8]  ]

    expect(my_transpose(matrix)).to eq(cols)
  end
end

describe '#stock_picker' do
  let(:stocks) { [1, 2, 3, 4, 5, 1] }

  it 'returns a tuple'  do
    expect(stock_picker(stocks).length).to eq(2)
  end

  it 'returns tuple of most profitable days' do
    expect(stock_picker(stocks)).to eql([0, 4])
  end

  let(:tricky_stocks) { [5, 4, 3, 2, 1, 3] }

  it 'does not sell before buy' do
    expect(stock_picker(tricky_stocks)).to eql( [4, 5])
  end


  it 'raises error' do
    expect { stock_picker('1,2,3') }.to raise_error(NoMethodError)
  end
end
