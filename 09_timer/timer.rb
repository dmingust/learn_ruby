# C:\Sites\the_odin_project\learn_ruby\09_timer

# copied solution from https://github.com/drewprice/study/blob/master/odin-project/projects/learn_ruby/001_solutions/timer.rb


class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		@hours = @seconds/3600.floor
		@minutes = (@seconds % 3600)/60
		@seconds = (@seconds % 60)
		"#{"%02d" % @hours}:#{"%02d" % @minutes}:#{"%02d" % @seconds}"
	end
end


