RSpec.describe Chandrayaan3 do

	before(:each) do
    @spacecraft = Chandrayaan3.new(0, 0, 0, 'N')
  end


	describe '#initialize' do
		it 'initializes the spacecraft with the given starting position and direction' do
		expect(@spacecraft.position).to eq([0, 0, 0])
		expect(@spacecraft.direction).to eq('N')
		end
	end

	describe '#execute_commands' do
		it 'will execute the corrent method as per command' do
		expect(@spacecraft.execute_commands(['f', 'r', 'u', 'b', 'l'])).to_eq([0,1,-1], 'N')
		end
	end

	describe '#move_forward' do
    it 'moves the spacecraft one step forward based on its current direction' do
      @spacecraft.move_forward
      expect(@spacecraft.position).to eq([0, 1, 0])
    end
  end

	describe '#move_backward' do
    it 'moves the spacecraft one step backward based on its current direction' do
      @spacecraft.move_backward
      expect(@spacecraft.position).to eq([0, -1, 0])
    end
  end

	describe '#turn_left' do
    it 'The spacecraft rotates 90 degrees to the left , changing its facing direction.' do
      spacecraft = Chandrayaan3.new(0, 1, -1, 'U')
      spacecraft.turn_left
      expect(spacecraft.position).to eq([0, 1, -1])
			expect(spacecraft.direction).to eq('N')
    end
  end

	describe '#turn_right' do
    it 'The spacecraft rotates 90 degrees to the right, changing its facing direction.' do
      spacecraft = Chandrayaan3.new(0, 1, 0, 'N')
      spacecraft.turn_right
      expect(spacecraft.position).to eq([0, 1, 0])
			expect(spacecraft.direction).to eq('E')
    end
  end

	describe '#turn_up' do
    it 'The spacecraft changes its angle, rotating upwards.' do
      spacecraft = Chandrayaan3.new(0, 1, 0, 'N')
      spacecraft.turn_up
			expect(spacecraft.direction).to eq('U')
    end
  end

	describe '#turn_down' do
    it 'The spacecraft changes its angle, rotating downwards.' do
      spacecraft = Chandrayaan3.new(0, 1, 0, 'N')
      spacecraft.turn_down
			expect(spacecraft.direction).to eq('D')
    end
  end

end