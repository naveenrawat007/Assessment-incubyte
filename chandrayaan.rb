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

end