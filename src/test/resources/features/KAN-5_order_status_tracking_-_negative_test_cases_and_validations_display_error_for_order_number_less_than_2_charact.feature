Feature: Order Status Tracking - Negative Test Cases and Validations

  Scenario: Display error for order number less than 2 characters
    Given User is on the order tracking page
    When User enters order number "1"
    And User clicks the "Track Order" button
    Then The result message should display "Invalid Order No"
