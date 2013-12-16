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