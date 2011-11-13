require 'rspec'

When /^I navigate to the yahtzee homepage$/ do
  visit('/')
end

When /^I start a new game$/ do
  visit('/')
  click_button('New Game')
end

Then /^I should have the ability to start a new game$/ do
  page.should have_button('New Game')
end

Then /^I should have the ability to roll the dice$/ do
  page.should have_button('Roll')
end

Then /^I should see an empty scorecard$/ do
  find_field('Ones').value.should == ""
  find_field('Twos').value.should == ""
  find_field('Threes').value.should == ""
  find_field('Fours').value.should == ""
  find_field('Fives').value.should == ""
  find_field('Sixes').value.should == ""
  find_field('Bonus').value.should == "0"
  find_field('Three-Of-A-Kind').value.should == ""
  find_field('Four-Of-A-Kind').value.should == ""
  find_field('Full House').value.should == ""
  find_field('Small Straight').value.should == ""
  find_field('Large Straight').value.should == ""
  find_field('Yahtzee').value.should == ""
  find_field('Chance').value.should == ""
end

Then /^I should have a total score of (\d+)$/ do |score|
  find_field('Chance').value.should == score.to_s
end