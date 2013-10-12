describe Array do

  context 'inject method should return' do

    context 'when the symbol is +' do

      it 'add all the elements' do
        [1, 2, 3, 4, 5].inject(:+).should eq 15
      end

    end
    
    context 'when the symbol is -' do

      it 'subtract all subsequent elements from the initial element' do
        [1, 2, 3, 4, 5].inject(:-).should eq -13
      end

      it 'subtract all elements from the given memo' do
        [1, 2, 3, 4, 5].inject(5, :-).should eq -10
      end

    end

    context 'using the block specified' do

      it 'the combination of all elements' do
        (1..5).to_a.inject { |total, number| total * number }.should eq 120
      end

      it 'the shortest string in an array' do
        ['apple','pear', 'banana', 'banana'].inject { |memo, word| memo.length < word.length ? memo : word }.should eq 'pear' 
      end

    end

    context 'map method should return' do

       it 'a new array with each value processed by the specified block' do
        (1..5).to_a.map {|elem| "dog" }.should eq ['dog', 'dog', 'dog', 'dog', 'dog']
        %w(margo josh jodie sam).map {|name| name.capitalize}.should eq ['Margo', 'Josh','Jodie', 'Sam']
       end

    end

  end

end
