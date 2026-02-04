Feature: Order Tracking - Negative Scenarios for Invalid Order Numbers

  Scenario: Track Order with Address as Invalid Order Number
    Given User is on the Order Tracking page
    When User enters order number "61 S Ward Ave"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number format."
