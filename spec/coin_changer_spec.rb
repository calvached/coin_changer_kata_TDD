require 'rspec'
require 'coin_changer'

describe CoinChanger do
	it 'returns one quarter if given 25' do
		changer = CoinChanger.new

		expect(changer.make_change(25)).to eq([25])
	end

	it 'returns two quarters if given 50' do
		changer = CoinChanger.new

		expect(changer.make_change(50)).to eq([25, 25])
	end

	it 'returns two pennies if given 2' do
		changer = CoinChanger.new

		expect(changer.make_change(2)).to eq([1, 1])
	end

	it 'returns three pennies if given 3' do
		changer = CoinChanger.new

		expect(changer.make_change(3)).to eq([1, 1, 1])
	end

	it 'returns a dime and a nickel if given 15' do
		changer = CoinChanger.new

		expect(changer.make_change(15)).to eq([10, 5])
	end

	it 'returns two quarters, a dime, a nickel and three pennies if given 68' do
		changer = CoinChanger.new

		expect(changer.make_change(68)).to eq([25, 25, 10, 5, 1, 1, 1])
	end

	it 'returns the correct change for a given number' do
		changer = CoinChanger.new

		expect(changer.make_change(98)).to eq([25, 25, 25, 10, 10, 1, 1, 1])
	end
end
