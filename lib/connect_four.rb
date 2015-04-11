=begin
Hopefully everyone has played Connect Four at some point (if not, see the Wikipedia page). It's a basic game where each player drops pieces into the cage in turn. A player wins if he or she manages to get 4 of their pieces consecutively in a row, column, or along a diagonal.
=end

class Game

	attr_accessor :columns, :rows, :grid, :players

	def initialize(rows = 6, columns = 7)

		@rows = rows
		@columns = columns
		@grid = make_grid
		@players = ["X","O"]
		@player = @players[0]
		
	end

	def make_grid
		grid = []
		sub_array = []

		i = 0
		j = 0
		while i < @rows
			j = 0
			while j < @columns
				sub_array << j.to_s
				j+=1
			end
			grid << sub_array
			sub_array = []
			i+=1
		end

		grid
		

	end

	def to_s
		puts "rows : " + @rows.to_s
		puts "columns : " + @columns.to_s
		puts "player : " + @player
		

	end



	def render_grid
		puts "\n"

		r, c = 0, 0

		while r < @rows
			c = 0
			while c < @columns
				printf "_ " + "." + " _" #grid[r][c].to_s
				if c < (@columns-1) 
				 printf "|" 
				else 
					printf ""
				end
				c +=1
			end
			
			puts "\n"
			r +=1
		end

	end

	def has_won?(player)
		
	end

	def get_move(player)

		puts "Enter which column (1 - " + @columns.to_s + ") "
		printf ">>"
		col_choice = gets.chomp.to_i - 1
		col_choice

	end

	def update_grid(player, column)
		


	end









end #class Game

g = Game.new(9,9)
puts g
g.render_grid
g.get_move("X")
