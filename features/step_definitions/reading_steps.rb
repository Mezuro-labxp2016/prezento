Given(/^I have a sample reading within the sample reading group$/) do
  @reading = FactoryGirl.create(:reading, {group_id: @reading_group.id, id: nil})
end

Given(/^I am at the New Reading page$/) do
  visit new_reading_group_reading_url(@reading_group.id)
end

Given(/^I am at the Edit Reading page$/) do
  visit edit_reading_group_reading_url(@reading_group.id, @reading.id)
end

Given(/^I have a sample reading within the sample reading group labeled "(.*?)"$/) do |label|
  @reading = FactoryGirl.create(:reading, {label: label, group_id: @reading_group.id, id: nil})
end
