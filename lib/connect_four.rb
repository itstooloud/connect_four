=begin
Hopefully everyone has played Connect Four at some point (if not, see the Wikipedia page). It's a basic game where each player drops pieces into the cage in turn. A player wins if he or she manages to get 4 of their pieces consecutively in a row, column, or along a diagonal.
=end

class Game

	attr_accessor :columns, :rows, :grid

	def initialize(columns = 7, rows = 6)

		@columns = columns
		@rows = rows
		@grid = make_grid
		
	end

	def make_grid

	end









end
