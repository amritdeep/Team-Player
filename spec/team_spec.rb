require "./lib/team.rb"

describe Team do 
	it "has a name" do
		Team.new.should respond_to :name
	end

	it "has list of players" do
		Team.new.should respond_to :players
	end

	it "is favored if it has a celebrity in it"
	it "complains if there is a bad word in the name"
end