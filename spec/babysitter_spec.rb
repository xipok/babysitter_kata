require "babysitter"

describe Babysitter do

	describe '#calc' do
		before(:each) do
			@babysitter = Babysitter.new
		end

		it 'returns an error if the start time is before 5:00PM(17:00)' do
			expect(@babysitter.calc(16,18,19)).to eq('cannot start before 5:00PM(1700)')		
		end

		it 'returns an error if the end time is after 4:00AM' do
			expect(@babysitter.calc(17,18,5)).to eq('cannot end after 4:00AM(0400)')
		end

		it 'returns a total of 48 dollars for a shift from 6:00PM to 10:00PM, with a bedtime of 10:00PM' do
			expect(@babysitter.calc(18,22,22)).to eq(48)
		end

		it 'returns a total of 64 dollars for a shift from 6:00PM to 12:00AM, with a bedtime of 10:00PM' do
			expect(@babysitter.calc(18,22,0)).to eq(64)
		end

		it 'returns a total of 96 dollars for a shift from 6:00PM to 2:00AM, with a bedtime of 10:00PM' do
			expect(@babysitter.calc(18,22,2)).to eq(96)
		end

		it 'only accepts integer values for start time' do
			expect(@babysitter.calc(18.5,22,2)).to eq('can only use whole hour values')
		end

		it 'only accepts integer values for bed time' do
			expect(@babysitter.calc(18,22.5,2)).to eq('can only use whole hour values')
		end

		it 'only accepts integer values for end time' do
			expect(@babysitter.calc(18,22,2.5)).to eq('can only use whole hour values')		
		end
	end
end