Feature: Order Tracking - Handling Duplicate Delivery Scheduling Issues (Negative Test Cases)

  Scenario: Display error for an order in an ambiguous delivery scheduling state
    Given User is on the order tracking page
    When User enters order number "ORDAMBIGUOUS2"
    And User clicks the "Track Order" button
    Then The error message should display "Delivery scheduling conflict. Review order details or contact support."
