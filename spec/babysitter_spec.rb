require "babysitter"

describe Babysitter do
	describe '#calc' do
		it 'returns nil if the start time is before 5:00PM' do
			babysitter = Babysitter.new
			expect(babysitter.calc(4,5,6)).to eq(nil)		
		end
	end
end