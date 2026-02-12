Feature: Order Tracking - Negative Scenarios (Invalid Order Number Length)

  Scenario: Display error when entering exactly 10 digits
    Given User is on the order tracking page
    When User enters order number "1234567890"
    And User clicks "Track Order" button
    Then The result message should display "Order number must be less than 10 digits."
