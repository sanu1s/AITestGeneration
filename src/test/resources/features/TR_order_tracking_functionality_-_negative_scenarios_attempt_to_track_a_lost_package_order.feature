Feature: Order Tracking Functionality - Negative Scenarios

  Scenario: Attempt to track a lost package order
    Given User is on the order tracking page
    When User enters order number "LOST98765"
    And User clicks the "Track Order" button
    Then The status message should display "Order LOST98765 status: Package lost, please contact support."
