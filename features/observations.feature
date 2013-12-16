Feature: Observations

  So that I can built up a literary database
  As a person eager to do data entry
  I want to have an object called Observation
  
  Scenario: Create a new observation
    Given observations exist
    When I create a new observation
    Then that new observation will be saved
    
  Scenario: Create a new observation with a new place
    Given observations exist
    And places exist
    And there is no place called "mexico"
    When I create a new observation with the text "A street in Mexico" and place "mexico"
    Then there will be a place called "mexico" and it will have a variant called "mexico"
    And the observation will have for its "place_id" the id of "mexico"
    
  Scenario: Create a new observation with an old place
    Given observations exist
    And places exist
    And there is a place called "mexico"
    When I create a new observation with the text "A street in Mexico" and place "mexico"
    Then the observation will have for its "place_id" the id of "mexico"
    
  @wip
  Scenario: Create a new observation with a new place and a page
    Given observations exist
    And pages exist
    When I create a new observation with the text "A street in Mexico" on page "21"
    Then the observation will have for its page_id the id of "21"