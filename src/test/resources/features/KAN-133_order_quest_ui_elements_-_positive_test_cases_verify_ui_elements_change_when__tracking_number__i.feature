Feature: Order Quest UI Elements - Positive Test Cases

  Scenario: Verify UI elements change when 'Tracking Number' is selected
    Given I navigate to "http://orderquest.com:7070"
    When I select "Tracking Number" from the search type dropdown
    Then I should see the input field with placeholder "Enter Tracking Number"
    And I should see a "Search" button
    And I should see an empty area for displaying search results
