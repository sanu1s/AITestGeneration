Feature: OrderQuest Input Field Interactions - Positive Scenarios

  Scenario: Enter valid data into Order Number field
    Given I am on the Order Search Page
    And I enter "12345" into the "Order Number" field
    And I click the "Search" button
    Then the "Order Number" field should have placeholder "Enter Order ID"
