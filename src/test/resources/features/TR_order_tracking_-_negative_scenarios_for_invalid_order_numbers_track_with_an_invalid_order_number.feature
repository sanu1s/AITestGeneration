Feature: Order Tracking - Negative Scenarios for Invalid Order Numbers

  Scenario: Track with an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "No order found with this number."
