Given(/^observations exist$/) do
  @observation = Observation.create!
end

When(/^I create a new observation$/) do
  visit observations_path
  click_link "Add observation"
  fill_in "observation_text", with: "This is a test sentence."
  click_button "Save observation"
end

Then(/^that new observation will be saved$/) do
   expect(Observation.where(text: "This is a test sentence.")).to exist
end

When(/^I create a new observation with the text "(.*?)" and place "(.*?)"$/) do |text, place|
  visit new_observation_path
  fill_in "observation_text", with: text
  fill_in "observation_place_name", with: place
  click_button "Save observation"
end

Then(/^the observation will have for its "(.*?)" the id of "(.*?)"$/) do |place_id, place|
  expect(Observation.where(place_name: place).first.place_id).to eq(Place.where(name: place).first.id)
end