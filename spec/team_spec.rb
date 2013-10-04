require "./lib/team.rb"

describe Team do 
	it "has a name" do
		Team.new("Random name").should respond_to :name
	end

	it "has list of players" do
		Team.new("Random name").players.should be_kind_of Array 
	end

	it "is favored if it has a celebrity in it" do
		Team.new("Random name", ["Amrit", "Deep"]).should be_favored
	end

	it "complains if there is a bad word in the name" do
		expect { Team.new("Crappy name") }.to raise_error

	end

	context "given a bad list of players" do
		let(:bad_players) { {} }

		it "fails to create given a bad player list" do
			expect { Team.new("name", bad_players)}.to raise_error

		end
	end
end