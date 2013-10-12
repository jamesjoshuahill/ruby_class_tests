describe Hash do

  let(:populations) { { :london => 8.1, :paris => 2.2, :berlin => 3.5 } }

  it 'should return the list of keys' do
    hash = { :france => :paris, :spain => :madrid }
    hash.keys.should eq [:france, :spain]
  end

  it 'should reject some values' do
    populations.reject do
      |capital, population| population < 5
    end.should eq({ :london => 8.1 })
  end

  context 'method rassoc that takes an object should' do
    
    it 'find the first matching value and return that key-value pair as an array' do
      populations.rassoc(8.1).should eq([:london, 8.1])
      populations.rassoc(2.2).should eq([:paris, 2.2])
    end

    it 'return nil if there is no matching value' do
      populations.rassoc(1000).should eq nil
    end

  end
  
end
