Feature: OrderTracking_NegativeScenarios

  Scenario: Attempt to track with an order number less than 2 characters
    Given I am on the order tracking page
    When I enter order number "1"
    And I click "Track Order"
    Then I should see the result message "Invalid Order No"
