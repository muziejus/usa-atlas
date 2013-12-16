Given(/^places exist$/) do
  @place = Place.new
end

Given(/^there is no place called "(.*?)"$/) do |name|
  expect(Place.where(name: name)).to_not exist
end

Then(/^there will be a place called "(.*?)" and it will have a variant called "(.*?)"$/) do |name, variant|
  @place = Place.where(name: name)
  expect(@place).to exist
  expect(@place[0].variants).to include(variant)
end