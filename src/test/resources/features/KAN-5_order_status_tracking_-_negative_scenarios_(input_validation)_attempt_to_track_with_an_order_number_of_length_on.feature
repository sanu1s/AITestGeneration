Feature: Order Status Tracking - Negative Scenarios (Input Validation)

  Scenario: Attempt to track with an order number of length one (alphabetic)
    Given I am on the order tracking page
    When I enter order number "A"
    And I click the "Track Order" button
    Then I should see the error message "Invalid Order No"
