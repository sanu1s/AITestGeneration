Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Tracking with Special Characters in Order Number
    Given User is on the order tracking page "https://www.owncompany.com/track"
    When User enters order number "ORD@#$"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format. Special characters are not allowed."
