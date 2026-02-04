Feature: Order Tracking - Positive Scenarios for Dock Return

  Scenario: Verify successful dock return and refund for another item
    Given User is on the order tracking page
    When User enters order number "ORD23456"
    And User clicks the "Track Order" button
    Then The status message should display "Dock return processed for Sofa."
    And The status message should display "Delivery of Sofa cancelled."
    And The status message should display "Refund issued for Sofa."
