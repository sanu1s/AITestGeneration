Feature: Order Tracking System - Positive Scenarios

  Scenario: Successfully track an order for a backpack to Hong Kong
    Given User is on the order tracking page
    When User enters order number "HKBPK12345"
    And User clicks the "Track Order" button
    Then The status message should display "Order HKBPK12345 found. Status: In Transit to Hong Kong."
