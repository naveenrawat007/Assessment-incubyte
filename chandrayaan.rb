# Use this command to initialize the Chandrayan3 class obj and run execute method
# --> chadrayan = Chandrayaan3.new(0,0,0,'N')
# --> chadrayan.execute_commands(['f', 'r', 'u', 'b', 'l'])

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

		print "Final position is : #{@position}"
		print "\nFinal direction is : #{@direction}"

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
    when 'U'
      @position[2] += 1
    when 'D'
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
    when 'U'
      @position[2] -= 1
    when 'D'
      @position[2] += 1
    end
  end

	def turn_left
    case @direction
    when 'N'
      @direction = 'W'
    when 'S'
      @direction = 'E'
    when 'E'
      @direction = 'N'
    when 'W'
      @direction = 'S'
		when 'U'
      @direction = 'N'
    when 'D'
      @direction = 'S'
    end
  end

  def turn_right
    case @direction
    when 'N'
      @direction = 'E'
    when 'S'
      @direction = 'W'
    when 'E'
      @direction = 'S'
    when 'W'
      @direction = 'N'
		when 'U'
      @direction = 'S'
    when 'D'
      @direction = 'N'
    end
  end

	def turn_up
    @direction = 'U'
  end

  def turn_down
    @direction = 'D'
  end

end