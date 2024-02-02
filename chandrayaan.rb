class Chandrayaan3
	attr_accessor :position, :direction

	def initialize(x, y, z, direction)
		@position = [x, y, z]
		@direction = direction
	end

	def execute_commands(commands)
		commands.each do |command|
			case command
			when 'f'
				move_forward
			when 'b'
				move_backward
			when 'l'
				turn_left
			when 'r'
				turn_right
			when 'u'
				turn_up
			when 'd'
				turn_down
			end
		end
	end

	private

	def move_forward
    case @direction
    when 'N'
      @position[1] += 1
    when 'S'
      @position[1] -= 1
    when 'E'
      @position[0] += 1
    when 'W'
      @position[0] -= 1
    when 'Up'
      @position[2] += 1
    when 'Down'
      @position[2] -= 1
    end
  end

	def move_backward
    case @direction
    when 'N'
      @position[1] -= 1
    when 'S'
      @position[1] += 1
    when 'E'
      @position[0] -= 1
    when 'W'
      @position[0] += 1
    when 'Up'
      @position[2] -= 1
    when 'Down'
      @position[2] += 1
    end
  end

end