=begin
Hopefully everyone has played Connect Four at some point (if not, see the Wikipedia page). It's a basic game where each player drops pieces into the cage in turn. A player wins if he or she manages to get 4 of their pieces consecutively in a row, column, or along a diagonal.
=end



class Game

	attr_accessor :columns, :rows, :grid, :player

	def initialize(rows = 6, columns = 7)

		@rows = rows
		@columns = columns
		@grid = make_grid
		@player = Player.new("Steve")
		
		
	end


	def update_grid (column)
		
		done = false
		j = @rows - 1
		p @grid
		puts j
		puts column
		#puts @grid[column][3]

		while (j >= 0 && !done)
			if @grid[j][column] == '.'
				@grid[j][column] = 'X'
				done = true
			end
			j-=1
		end #while

	end #update_grid

	def make_grid
		grid = []
		sub_array = []

		i = 0
		j = 0
		while i < @rows
			j = 0
			while j < @columns
				sub_array << "." #j.to_s
				j+=1
			end
			grid << sub_array
			sub_array = []
			i+=1
		end

		grid
		

	end #make_grid

	def to_s
		puts "rows : " + @rows.to_s
		puts "columns : " + @columns.to_s
	end #to_s



	def render_grid
		puts "\n"

		r, c = 0, 0

		while r < @rows
			c = 0
			while c < @columns
				printf "_ " + grid[r][c].to_s + " _" #grid[r][c].to_s
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

	end #render_grid

	def has_won?(player)
		
	end

	def get_move(player)

		puts "Enter which column (0 - " + (@columns -1).to_s + ") "
		printf ">>"
		col_choice = gets.chomp.to_i

		
		while !col_choice.between?(0, @columns)
			puts "OUT OF RANGE"
			puts "Enter which column (0 - " + (@columns-1).to_s + ") "
			printf ">>"
			col_choice = gets.chomp.to_i
		end

		col_choice

	end


end #class Game


class Player

	attr_accessor :name

	def initialize(player)
		@name = player

	end

end #class Player


g = Game.new(3,5)

loop do
choice = g.get_move("Burt")


g.render_grid
g.update_grid(choice)
g.render_grid
end



#puts g.player.name

#g.get_move(g.player.name)

