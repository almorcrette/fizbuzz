require 'fizzbuzz'

describe 'fizzbuzz' do
  it 'returns 4 when number is 4' do
    expect(fizzbuzz(4)).to eq 4
  end
  
  it 'returns fizz when number is 3' do
    expect(fizzbuzz(3)).to eq 'fizz'
  end
  
  it 'returns buzz when number is 5' do
    expect(fizzbuzz(5)).to eq 'buzz'
  end
  
  it 'returns fizzbuzz when number is 15' do
    expect(fizzbuzz(15)).to eq 'fizzbuzz'
  end
  
  it 'returns fizzbuzz when number is divisible by both 3 and 5' do
    expect(fizzbuzz(rand(100) * 15)).to eq 'fizzbuzz'
  end
  
  it 'returns "fizz" when number is divisible by 3' do
    variable = rand(100) * 3
    expect(fizzbuzz(variable)).to eq 'fizz' unless variable % 5
  end
  
  it 'returns buzz when number is divisible by 5' do
    variable = rand(100) * 5
    expect(fizzbuzz(variable)).to eq 'buzz' unless variable % 3
  end
  
  it 'returns number when number is not divisible by 3 or 5' do
    variable = rand(500)
    expect(fizzbuzz(variable)).to eq variable unless variable % 5 || variable % 3
  end
  
end