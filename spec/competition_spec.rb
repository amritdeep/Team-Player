require "./lib/competition"
require "./lib/team"
require "./support/matchers/team_support.rb"

describe Competition do 
	let(:competition) { Competition.new}
	let(:team) { Team.new("Randon name")}

	context "having no questions" do
		before { competition.questions = []}

		it "doesn't accept any teams" do
			competition.should_not allow_teams_to_enter
		end
	end

	context "having questions" do
		before { competition.questions = [ {:title => "questions"}]}
		subject { competition}

		it { should allow_team_to_enter}

	end

end