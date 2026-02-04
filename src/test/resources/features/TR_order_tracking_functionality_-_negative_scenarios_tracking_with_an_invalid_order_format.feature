Feature: Order Tracking Functionality - Negative Scenarios

  Scenario: Tracking with an invalid order format
    Given User is on the order tracking page
    When User enters order number "INV@LID"
    And User clicks the Track Order button
    Then The error message should display "Invalid Order Number format."
    And The URL should be "https://example.com/track"
