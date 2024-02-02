class Chandrayaan3
    attr_accessor :position, :direction
  
    def initialize(x, y, z, direction)
      @position = [x, y, z]
      @direction = direction
    end

end