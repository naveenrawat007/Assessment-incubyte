describe Chandrayaan3 do
    describe '#initialize' do
      it 'initializes the spacecraft with the given starting position and direction' do
        spacecraft = Chandrayaan3.new(0, 0, 0, 'N')
        expect(spacecraft.position).to eq([0, 0, 0])
        expect(spacecraft.direction).to eq('N')
      end
    end
  end