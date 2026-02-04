Feature: Order Tracking - Positive Scenarios for Pending and On-Hold Orders

  Scenario: Successfully track an order that is on hold
    Given User is on the order tracking page
    When User enters order number "ONHOLD456"
    And User clicks the "Track Order" button
    Then The status message should display "Your order is currently on hold."
