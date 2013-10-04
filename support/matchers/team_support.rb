RSpec::Matchers.define :be_a_multiple_of do |expected|
  match do |actual|
    begin
      Team.new("Random name").enter_competition actual
      true
    rescue Competition::Closed
      false 
    end
  end

  failure_message_for_should do |actual|
    "expected that #{actual} would be a precise multiple of #{expected}"
  end

  failure_message_for_should_not do |actual|
    "expected that #{actual} would not be a precise multiple of #{expected}"
  end

  description do
    "be a precise multiple of #{expected}"
  end
end