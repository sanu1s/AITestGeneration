Feature: Order Status Tracking - Negative Scenarios (Input Validation)

  Scenario: Attempt to track with another non-numeric order number
    Given I am on the order tracking page
    When I enter order number "ORD!@#"
    And I click the "Track Order" button
    Then I should see the error message "Order number must be numeric"
