class DiceController < ApplicationController
	def rules
		render 'index'
	end

	def roll
		@d1 = rand(6) + 1
		@d2 = rand(6) + 1
		if params['goal'] == nil
			@goal = 0
		else
			@goal = params['goal'].to_i
		end
		@score = @d1 + @d2
		render 'roll'
	end
end