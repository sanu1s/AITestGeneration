Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track with a short order number (less than 2 digits)
    Given User is on the Order Tracking page
    When User enters order number "1"
    And User clicks the Track Order button
    Then The result message should display "Invalid Order No"
    And The URL should remain on the Order Tracking page
