class Team
	attr_accessor :name, :players

	def initialize(name, players = [])
		raise Exception unless players.is_a? Array
			
		@name = name
		@players = players

		raise Exception if has_bad_name?
	end

	def has_bad_name?
		list_to_words = %w{crappy bad lousy}
		list_to_words - @name.downcase.split(" ") != list_to_words
	end

	def favored?
		@players.include? "Amrit"
	end
end