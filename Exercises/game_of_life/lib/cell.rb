class Cell
  def initialize(state, neighbours)
    @state = state # either 1 or 0 for alive or dead
    @neighbours = neighbours # an array that represents the surrounding cells
  end

  def regenerate
    
# Any live cell with fewer than two live neighbours dies, as if caused by under-population.
# Any live cell with two or three live neighbours lives on to the next generation.
# Any live cell with more than three live neighbours dies, as if by overcrowding.
# Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.
cell_state = @state
    alive_count = 0
	    @neighbours.each do |neighbor|
	    	if neighbor == 1
	    		alive_count += 1
	    	end
	    end
    if cell_state == 1
	    if alive_count < 2
	    	cell_state = 0
	    elsif alive_count == 2 || alive_count == 3
	    	scell_state = cell_state
	    elsif alive_count > 3
	    	scell_state = 0
	    end
	elsif scell_state == 0 && alive_count == 3
		cell_state = 1
	end
return @state

  end
end
