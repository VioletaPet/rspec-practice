RSpec.describe 'nested hooks' do
  before (:context) do
    puts "OUTER Before context"
  end

  before(:example) do
    puts 'OUTER Before example'
  end

  it 'does basic math' do
    expect(1 + 1). to eq(2)
  end


  context 'with condition XY' do
    before(:context) do
      puts 'INNER Before context'
    end

    before(:example) do
      puts 'INNER Before example'
    end

    it 'does more basic math' do
      expect(2 + 2).to eq(4)
    end

    it 'does substraction too' do
      expect(10-2).to eq(8)
    end
  end
end


# all OUTER Befores are valid for INNER Befores
# NOT the other way round
# before(:context) only applies to its block and runs once
