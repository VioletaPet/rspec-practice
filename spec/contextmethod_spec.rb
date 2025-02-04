RSpec.describe '#even? method' do
  # instead of it 'should return true if number is even/false if number is odd'
  # nested describe method for more organization
  # context or describe are equal for nested methods

  # #even? method with even number
  context 'with even number' do
    it 'should return true' do
      expect(4.even?).to eq(true)
    end
  end

  # #even? method with odd number
  context 'with odd number' do
    it 'should return false' do
      expect(5.even?).to eq(false)
    end
  end
end





# INFOS
# #method when testing an instance method
# .method when testing class method
