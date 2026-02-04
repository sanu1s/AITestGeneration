Feature: Order Tracking Functionality - Negative Scenarios and Validations

  Scenario: Display error when order number is empty
    Given User is on the Order Tracking page
    When User enters order number ""
    And User clicks the 'Track Order' button
    Then The error message should display "Order Number cannot be empty."
